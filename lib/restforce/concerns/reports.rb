require 'restforce/concerns/verbs'

module Restforce
  module Concerns
    module Reports
      extend Restforce::Concerns::Verbs

      define_verbs :get, :post, :put, :delete, :patch, :head

      def report(report_id, attrs)
        api_post("analytics/reports/#{report_id}", attrs).body
      end

      def describe_report(report_id)
        api_get("analytics/reports/#{report_id}/describe").body
      end

    end
  end
end