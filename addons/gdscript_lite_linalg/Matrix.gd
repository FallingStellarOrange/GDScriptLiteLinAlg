## 面向小规模稠密实矩阵的轻量矩阵类型，不追求极致性能
class_name LiteMatrix
extends RefCounted

## 行数
var rows: int
## 列数
var cols: int
## 矩阵的数据储存
var data: PackedFloat64Array  # 一维存储，索引 = row * cols + col

## 常用方阵枚举
enum CommonSquareMatrices {
	## 零矩阵枚举
	ZEROS,
	## 单位矩阵枚举
	IDENTITY,
	## 全一矩阵
	ONES 
}

func _init(r: int = 0, c: int = 0) -> void:
	rows = r
	cols = c
	data = PackedFloat64Array()
	data.resize(r * c)

## 将Array二维数组转Matrix
static func from_array(arr: Array) -> LiteMatrix:
	var r := arr.size()
	var c: int = 0 if r == 0 else arr[0].size()
	var m := LiteMatrix.new(r, c)
	for i in r:
		for j in c:
			m.data[i * c + j] = float(arr[i][j])
	return m

## 获取矩阵(r, c)处的数据
func get_value(r: int, c: int) -> float:
	return data[r * cols + c]

## 设置矩阵(r, c)处的数据
func set_value(r: int, c: int, v: float) -> void:
	data[r * cols + c] = v

## 克隆该矩阵到新矩阵
func clone() -> LiteMatrix:
	var m := LiteMatrix.new(rows, cols)
	m.data = data.duplicate()
	return m

## 从当前矩阵构建转置矩阵
func transpose() -> LiteMatrix:
	var m := LiteMatrix.new(cols, rows)
	for i in rows:
		for j in cols:
			m.data[j * rows + i] = data[i * cols + j]
	return m

## 常用方阵构造，包含零矩阵、单位矩阵、全一矩阵
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

## 构造单位矩阵
static func identity(n: int) -> LiteMatrix:
	return structure_square(CommonSquareMatrices.IDENTITY, n)


## 构造零矩阵
static func zeros(n: int) -> LiteMatrix:
	return structure_square(CommonSquareMatrices.ZEROS, n)

## 构造全一矩阵
static func ones(n: int) -> LiteMatrix:
	return structure_square(CommonSquareMatrices.ONES, n)
