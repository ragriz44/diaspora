#   Copyright (c) 2010, Diaspora Inc.  This file is
#   licensed under the Affero General Public License version 3 or later.  See
#   the COPYRIGHT file.

module Job
  class PublishToHub < Base
    @queue = :http_service

    def self.perform_delegate(sender_public_url)
      #require File.join(Rails.root, 'lib/pubsubhubbub')
      atom_url = sender_public_url + '.atom'
      hubs = [AppConfig[:pubsub_server]]
      #Pubsubhubbub.new(AppConfig[:pubsub_server]).publish(atom_url)
      pub = OPub::Publisher.new(atom_url, hubs)
      pub.ping_hubs
    end
  end
end
