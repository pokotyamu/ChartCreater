# -*- coding: utf-8 -*-
class LinesController < ApplicationController
  def index
    category = [1,3,5,7]
    current_quantity = [1000,5000,3000,8000]
    @graph = LazyHighCharts::HighChart.new('graph') do |f|
      f.title(text: 'ItemXXXの在庫の推移')
      f.xAxis(categories: category)
      f.series(name: '在庫数', data: current_quantity)
    end
  end

  def show
    category = [1,3,5,7]
    current_quantity = params[:series].split("\\n").map(&:to_i)
    @graph = LazyHighCharts::HighChart.new('graph') do |f|
      f.title(text: 'ItemXXXの在庫の推移')
      f.xAxis(categories: category)
      f.series(name: '在庫数', data: current_quantity)
    end
  end
end
