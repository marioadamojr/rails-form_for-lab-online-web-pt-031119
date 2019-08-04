class SchoolClassesController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
  end

  def create
    @post = Post.create(post_params(:title, :room_number))
    redirect_to post_path(@post)
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(post_params(:title))
    redirect_to school_class_path(@school_class)
  end

  private

  def post_params(*args)
    params.require(:school_class).permit(*args)
  end
end
