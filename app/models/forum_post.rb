class ForumPost < ApplicationRecord
belongs_to :user
belongs_to :forum_thread, counter_cache: true


validates :content, presence:{message: "tidak boleh kosong"}

end
