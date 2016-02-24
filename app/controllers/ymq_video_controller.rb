require 'db_models'
class YmqVideoController < ApplicationController
  skip_before_action :set_inside_links
  layout :set_layout
  
  def set_layout
    "ymq"
  end
  
  def show
    @video_name = params[:video_name]
    @video = YmqVideo.where("video_name = ?", @video_name).take
    not_found if @video.nil?
    @video_detail = YmqVideoDetail.where(video_id: @video.id).take
    not_found if @video_detail.nil?
    tags = @video.tags.split(',')
    @title = "#{tags[2]}年#{tags[0]}#{tags[1]}#{tags[3]}_#{tags[4]}_#{tags[5]}"
    @video_info = JSON.parse(@video_detail.video_json)
    @products = JSON.parse(YmqVideoDetail.where(id: 1).take.products_json).sample(8)
    @links = JSON.parse(@video_detail.links_json)
    @related_videos = JSON.parse(@video_detail.related_videos_json)
  end
end
