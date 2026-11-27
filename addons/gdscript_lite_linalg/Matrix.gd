class_name LiteMatrix
extends RefCounted

# 行数
var rows: int
# 列数
var cols: int
# 矩阵的数据储存
var data: PackedFloat64Array  # 一维存储，索引 = row * cols + col

# 常用方阵枚举
enum CommonSquareMatrices {
	ZEROS, # 零矩阵
	IDENTITY, # 单位矩阵
	ONES # 一矩阵
}

func _init(r: int = 0, c: int = 0) -> void:
	rows = r
	cols = c
	data = PackedFloat64Array()
	data.resize(r * c)

# Array二维数组转Matrix
static func from_array(arr: Array) -> LiteMatrix:
	var r := arr.size()
	var c: int = 0 if r == 0 else arr[0].size()
	var m := LiteMatrix.new(r, c)
	for i in r:
		for j in c:
			m.data[i * c + j] = float(arr[i][j])
	return m

# 获取数据
func get_value(r: int, c: int) -> float:
	return data[r * cols + c]

# 设置数据
func set_value(r: int, c: int, v: float) -> void:
	data[r * cols + c] = v

# 克隆矩阵
func clone() -> LiteMatrix:
	var m := LiteMatrix.new(rows, cols)
	m.data = data.duplicate()
	return m

# 构建转置矩阵
func transpose() -> LiteMatrix:
	var m := LiteMatrix.new(cols, rows)
	for i in rows:
		for j in cols:
			m.data[j * rows + i] = data[i * cols + j]
	return m

# 常用方阵构造
static func structure_square(kind: CommonSquareMatrices, n:int) -> LiteMatrix:
	var m:= LiteMatrix.new(n, n)
	# 分类讨论
	match kind:
		CommonSquareMatrices.ZEROS:
			pass
		CommonSquareMatrices.IDENTITY:
			for i in n:
				m.data[i * n + i] = 1.0
		CommonSquareMatrices.ONES:
			for i in n*n:
				m.data[i] = 1.0

	return m

# 构造单位矩阵
static func identity(n: int) -> LiteMatrix:
	return structure_square(CommonSquareMatrices.IDENTITY, n)


# 构造零矩阵
static func zero(n: int) -> LiteMatrix:
	var m:= LiteMatrix.new(n, n)
	
	return m

# 构造全一矩阵
static func one(n: int) -> LiteMatrix:
	return structure_square(CommonSquareMatrices.ONES, n)
