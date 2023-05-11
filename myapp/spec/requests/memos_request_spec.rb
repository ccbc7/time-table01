require 'rails_helper'

# RSpec.describe "Memos", type: :request do
#   describe 'GET /memos/:id' do
#     let(:memo) { create(:memo) }  # FactoryBotでメモを作成

#     before do
#       get memo_path(memo)
#     end

#     it 'responds successfully' do
#       expect(response).to have_http_status(:success)
#     end

#     it 'renders the :show template' do
#       expect(response.body).to include 'Memo details'  # メモの詳細が表示されているか確認します
#     end
#   end
# end

RSpec.describe "Memos", type: :request do
  describe "GET /memos/:id" do
    it "renders the :show template" do
      memo = FactoryBot.create(:memo, title: 'Sample title', content: 'Sample content')
      get memo_path(memo)
      expect(response.status).to eq(200)
      expect(response.body).to include 'Sample title' # メモのタイトルが表示されているか確認します
      expect(response.body).to include 'Sample content'  # メモのコンテンツが表示されているか確認します
    end
  end
end
