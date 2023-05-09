class MemosController < ApplicationController
  def show
    @memo = Memo.new
    @memos = Memo.all
  end

  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to root_path
    else
      @memos = Memo.all
      render :show
    end
  end

  def destroy
    @memo = Memo.find(params[:id])
    @memo.destroy
    redirect_to root_path
  end

  private

  def memo_params
    params.require(:memo).permit(:content, :title)
  end
end
