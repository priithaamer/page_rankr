require File.expand_path('../../index', __FILE__)

module PageRankr
  class Indexes
    class Google
      include Index
      
      def url
        "http://www.google.com/search"
      end

      def params
        {:q => "site:#{tracked_url}"}
      end

      def xpath
        "//div[@id='subform_ctrl']/div[2]/b[3]/text()"
      end
    end
  end
end