require 'restforce/concerns/verbs'

module Restforce
  module Concerns
    module Reports
      extend Restforce::Concerns::Verbs

      define_verbs :get, :post, :put, :delete, :patch, :head

      def report(report_id, attrs)
        api_post("reports/#{report_id}", attrs).body
      end

      def describe_report(report_id)
        api_get("reports/#{report_id}/describe").body
      end

      private

      def api_path(path)
        "/services/data/v#{options[:api_version]}/analytics/#{path}"
      end

    end
  end
end

