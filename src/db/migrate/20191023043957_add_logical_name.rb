# encoding: utf-8
class AddLogicalName < ActiveRecord::Migration[5.2]
  def change
    set_table_comment :users, "ユーザー"
    set_column_comment :users, :id, "ユーザーID"
    set_column_comment :users, :name, "ユーザー名"
    set_column_comment :users, :onedate_id, "1DID"
    set_column_comment :users, :profile, "自己紹介文"
    set_column_comment :users, :sex, "性別"
    set_column_comment :users, :age, "年齢"
    set_column_comment :users, :area, "エリア"
    set_column_comment :users, :address, "住所"
    set_column_comment :users, :mail_address, "メールアドレス"
    set_column_comment :users, :user_attr, "ユーザー属性"
    set_column_comment :users, :created_at, "作成日時"
    set_column_comment :users, :updated_at, "更新日時"
    set_column_comment :users, :password_digest, "暗号化パスワード"

    set_table_comment :plans, "デートプラン"
    set_column_comment :plans, :id, "デートプランID"
    set_column_comment :plans, :title, "デートプランタイトル"
    set_column_comment :plans, :description, "説明"
    set_column_comment :plans, :date, "デート予定日"
    set_column_comment :plans, :transportation, "交通手段"
    set_column_comment :plans, :need_time, "所要時間"
    set_column_comment :plans, :created_at, "作成日時"
    set_column_comment :plans, :updated_at, "更新日時"
    set_column_comment :plans, :user_id, "ユーザーID"

    set_table_comment :spots, "デートスポット"
    set_column_comment :spots, :id, "デートスポットID"
    set_column_comment :spots, :name, "スポット名"
    set_column_comment :spots, :description, "説明"
    set_column_comment :spots, :order, "順番"
    set_column_comment :spots, :need_time, "所要時間"
    set_column_comment :spots, :latitude, "緯度"
    set_column_comment :spots, :longitude, "軽度"
    set_column_comment :spots, :created_at, "作成日時"
    set_column_comment :spots, :updated_at, "更新日時"
    set_column_comment :spots, :plan_id, "デートプランID"

    set_table_comment :comments, "コメント"
    set_column_comment :comments, :id, "コメントID"
    set_column_comment :comments, :comment, "コメント内容"
    set_column_comment :comments, :created_at, "作成日時"
    set_column_comment :comments, :updated_at, "更新日時"
    set_column_comment :comments, :user_id, "ユーザーID(コメントしたユーザー)"
    set_column_comment :comments, :plan_id, "デートプランID(コメントされたプラン)"

    set_table_comment :likes, "お気に入り"
    set_column_comment :likes, :id, "お気に入りID"
    set_column_comment :likes, :user_id, "ユーザーID(お気に入りしたユーザー)"
    set_column_comment :likes, :plan_id, "デートプランID(お気に入りされたプラン)"
    set_column_comment :likes, :created_at, "お気に入り日時"

    set_table_comment :follows, "フォロー"
    set_column_comment :follows, :id, "フォローID"
    set_column_comment :follows, :user_id, "ユーザーID(フォローしたユーザー)"
    set_column_comment :follows, :follow_user_id, "ユーザーID(フォローされたユーザー)"
    set_column_comment :follows, :created_at, "フォロー日時"

    set_table_comment :histories, "検索履歴"
    set_column_comment :histories, :id, "検索履歴ID"
    set_column_comment :histories, :user_id, "ユーザーID"
    set_column_comment :histories, :word, "検索ワード"
    set_column_comment :histories, :created_at, "検索日時"
  end
end