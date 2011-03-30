#   Copyright (c) 2010, Diaspora Inc.  This file is
#   licensed under the Affero General Public License version 3 or later.  See
#   the COPYRIGHT file.

module Job
  class PublishToHub < Base
    @queue = :http_service

    def self.perform_delegate(sender_public_url)
      OPub::Publisher.new(sender_public_url, [AppConfig[:pubsub_server]]).ping_hubs
    end
  end
end
