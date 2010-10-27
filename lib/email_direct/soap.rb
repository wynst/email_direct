require 'nokogiri'
require 'service_proxy/base'
require 'email_direct/service_proxy_patch'
require 'active_support/core_ext/hash/conversions'
ActiveSupport::XmlMini.backend = 'Nokogiri'

module EmailDirect
  class SOAP < ServiceProxy::Base
    include ServiceProxyPatch
    attr_accessor :credentials

    def initialize(accountname, password, options={})
      super(options["EndPoint"] || "http://espapi.net/v1/api.asmx?WSDL")
      @credentials                = {}
      @credentials["AccountName"] = accountname
      @credentials["Password"]    = password
      @credentials["Enc"]         = options["Enc"]         || options[:enc]
    end

    def build_account_get_active_emails(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_account_get_active_emails(response)
      Nokogiri.XML(response.body)
    end

    def build_account_get_active_emails_simple(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_account_get_active_emails_simple(response)
      Nokogiri.XML(response.body)
    end

    def build_account_get_complaints(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_account_get_complaints(response)
      Nokogiri.XML(response.body)
    end

    def build_account_get_complaints_simple(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_account_get_complaints_simple(response)
      Nokogiri.XML(response.body)
    end

    def build_account_get_database_fields(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_account_get_database_fields(response)
      Nokogiri.XML(response.body)
    end

    def build_account_get_global_removes(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_account_get_global_removes(response)
      Nokogiri.XML(response.body)
    end

    def build_account_get_global_removes_simple(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_account_get_global_removes_simple(response)
      Nokogiri.XML(response.body)
    end

    def build_account_get_hard_bounces(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_account_get_hard_bounces(response)
      Nokogiri.XML(response.body)
    end

    def build_account_get_hard_bounces_simple(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_account_get_hard_bounces_simple(response)
      Nokogiri.XML(response.body)
    end

    def build_account_get_ip_information(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_account_get_ip_information(response)
      Nokogiri.XML(response.body)
    end

    def build_account_set_email_limit(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_account_set_email_limit(response)
      Nokogiri.XML(response.body)
    end

    def build_campaign_add(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_campaign_add(response)
      Nokogiri.XML(response.body)
    end

    def build_campaign_copy(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_campaign_copy(response)
      Nokogiri.XML(response.body)
    end

    def build_campaign_get_clicks(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_campaign_get_clicks(response)
      Nokogiri.XML(response.body)
    end

    def build_campaign_get_clicks_for_link(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_campaign_get_clicks_for_link(response)
      Nokogiri.XML(response.body)
    end

    def build_campaign_get_complaints(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_campaign_get_complaints(response)
      Nokogiri.XML(response.body)
    end

    def build_campaign_get_hard_bounces(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_campaign_get_hard_bounces(response)
      Nokogiri.XML(response.body)
    end

    def build_campaign_get_list_drafts(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_campaign_get_list_drafts(response)
      Nokogiri.XML(response.body)
    end

    def build_campaign_get_list_scheduled(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_campaign_get_list_scheduled(response)
      Nokogiri.XML(response.body)
    end

    def build_campaign_get_list_sent(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_campaign_get_list_sent(response)
      Nokogiri.XML(response.body)
    end

    def build_campaign_get_opens(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_campaign_get_opens(response)
      Nokogiri.XML(response.body)
    end

    def build_campaign_get_recipients(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_campaign_get_recipients(response)
      Nokogiri.XML(response.body)
    end

    def build_campaign_get_removes(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_campaign_get_removes(response)
      Nokogiri.XML(response.body)
    end

    def build_campaign_get_summary(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_campaign_get_summary(response)
      Nokogiri.XML(response.body)
    end

    def build_campaign_schedule(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_campaign_schedule(response)
      Nokogiri.XML(response.body)
    end

    def build_creative_add(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_creative_add(response)
      Nokogiri.XML(response.body)
    end

    def build_creative_create_folder(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_creative_create_folder(response)
      Nokogiri.XML(response.body)
    end

    def build_creative_get_creatives_for_folder(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_creative_get_creatives_for_folder(response)
      Nokogiri.XML(response.body)
    end

    def build_creative_get_folders(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_creative_get_folders(response)
      Nokogiri.XML(response.body)
    end

    def build_email_add(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_email_add(response)
      Nokogiri.XML(response.body)
    end

    def build_email_add_with_fields(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_email_add_with_fields(response)
      Nokogiri.XML(response.body)
    end

    def build_email_add_simple(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_email_add_simple(response)
      Nokogiri.XML(response.body)
    end

    def build_email_change(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_email_change(response)
      Nokogiri.XML(response.body)
    end

    def build_email_delete(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_email_delete(response)
      Nokogiri.XML(response.body)
    end

    def build_email_delete_simple(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_email_delete_simple(response)
      Nokogiri.XML(response.body)
    end

    def build_email_get_history(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_email_get_history(response)
      Nokogiri.XML(response.body)
    end

    def build_email_get_properties(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_email_get_properties(response)
      Nokogiri.XML(response.body)
    end

    def build_email_remove(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_email_remove(response)
      Nokogiri.XML(response.body)
    end

    def build_email_remove_simple(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_email_remove_simple(response)
      Nokogiri.XML(response.body)
    end

    def build_email_update(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_email_update(response)
      Nokogiri.XML(response.body)
    end

    def build_filter_get_all(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_filter_get_all(response)
      Nokogiri.XML(response.body)
    end

    def build_filter_get_subscribers(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_filter_get_subscribers(response)
      Nokogiri.XML(response.body)
    end

    def build_filter_get_subscribers_simple(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_filter_get_subscribers_simple(response)
      Nokogiri.XML(response.body)
    end

    def build_list_add(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_list_add(response)
      Nokogiri.XML(response.body)
    end

    def build_list_delete(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_list_delete(response)
      Nokogiri.XML(response.body)
    end

    def build_list_get_all(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_list_get_all(response)
      Nokogiri.XML(response.body)
    end

    def build_list_get_members(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_list_get_members(response)
      Nokogiri.XML(response.body)
    end

    def build_private_label_create_account(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_private_label_create_account(response)
      Nokogiri.XML(response.body)
    end

    def build_private_label_get_child_accounts(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_private_label_get_child_accounts(response)
      Nokogiri.XML(response.body)
    end

    def build_private_label_set_api_password(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_private_label_set_api_password(response)
      Nokogiri.XML(response.body)
    end

    def build_publication_add(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_publication_add(response)
      Nokogiri.XML(response.body)
    end

    def build_publication_delete(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_publication_delete(response)
      Nokogiri.XML(response.body)
    end

    def build_publication_get_all(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_publication_get_all(response)
      Nokogiri.XML(response.body)
    end

    def build_publication_get_subscribers(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_publication_get_subscribers(response)
      Nokogiri.XML(response.body)
    end

    def build_publication_get_unsubscribes(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_publication_get_unsubscribes(response)
      Nokogiri.XML(response.body)
    end

    def build_relay_send_create_category(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_relay_send_create_category(response)
      Nokogiri.XML(response.body)
    end

    def build_relay_send_get_categories(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_relay_send_get_categories(response)
      Nokogiri.XML(response.body)
    end

    def build_relay_send_get_category_stats(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_relay_send_get_category_stats(response)
      Nokogiri.XML(response.body)
    end

    def build_relay_send_get_category_stats_for_tags(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_relay_send_get_category_stats_for_tags(response)
      Nokogiri.XML(response.body)
    end

    def build_relay_send_get_details_for_receipt(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_relay_send_get_details_for_receipt(response)
      Nokogiri.XML(response.body)
    end

    def build_relay_send_get_summary_for_receipts(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_relay_send_get_summary_for_receipts(response)
      Nokogiri.XML(response.body)
    end

    def build_relay_send_send_email(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_relay_send_send_email(response)
      Nokogiri.XML(response.body)
    end

    def build_relay_send_send_email_vars(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_relay_send_send_email_vars(response)
      Nokogiri.XML(response.body)
    end

    def build_short_url_create(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_short_url_create(response)
      Nokogiri.XML(response.body)
    end

    def build_short_url_get_stats(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_short_url_get_stats(response)
      Nokogiri.XML(response.body)
    end

    def build_short_url_update_link(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_short_url_update_link(response)
      Nokogiri.XML(response.body)
    end

    def build_source_add(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_source_add(response)
      Nokogiri.XML(response.body)
    end

    def build_source_delete(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_source_delete(response)
      Nokogiri.XML(response.body)
    end

    def build_source_get_all(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_source_get_all(response)
      Nokogiri.XML(response.body)
    end

    def build_stats_day_of_week(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_stats_day_of_week(response)
      Nokogiri.XML(response.body)
    end

    def build_stats_domain_over_time(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_stats_domain_over_time(response)
      Nokogiri.XML(response.body)
    end

    def build_stats_hourly(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_stats_hourly(response)
      Nokogiri.XML(response.body)
    end

    def build_stats_over_time(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_stats_over_time(response)
      Nokogiri.XML(response.body)
    end

    def build_stats_source_over_time(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_stats_source_over_time(response)
      Nokogiri.XML(response.body)
    end

    def build_stats_summary(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_stats_summary(response)
      Nokogiri.XML(response.body)
    end

    def build_stats_top_domains(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_stats_top_domains(response)
      Nokogiri.XML(response.body)
    end

    def build_stats_top_sources(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_stats_top_sources(response)
      Nokogiri.XML(response.body)
    end

    def build_suppression_list_add(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_suppression_list_add(response)
      Nokogiri.XML(response.body)
    end

    def build_suppression_list_add_domains(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_suppression_list_add_domains(response)
      Nokogiri.XML(response.body)
    end

    def build_suppression_list_add_emails(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_suppression_list_add_emails(response)
      Nokogiri.XML(response.body)
    end

    def build_suppression_list_delete(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_suppression_list_delete(response)
      Nokogiri.XML(response.body)
    end

    def build_suppression_list_get_all(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_suppression_list_get_all(response)
      Nokogiri.XML(response.body)
    end

    def build_suppression_list_get_members_simple(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_suppression_list_get_members_simple(response)
      Nokogiri.XML(response.body)
    end

    def build_workflow_add_existing_emails(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_workflow_add_existing_emails(response)
      Nokogiri.XML(response.body)
    end

    def build_workflow_add_to_workflows(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_workflow_add_to_workflows(response)
      Nokogiri.XML(response.body)
    end

    def build_workflow_get_all(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_workflow_get_all(response)
      Nokogiri.XML(response.body)
    end

    def build_workflow_get_send_nodes(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_workflow_get_send_nodes(response)
      Nokogiri.XML(response.body)
    end

    def build_workflow_get_stats(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_workflow_get_stats(response)
      Nokogiri.XML(response.body)
    end

    def build_workflow_get_stats_for_send_node(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_workflow_get_stats_for_send_node(response)
      Nokogiri.XML(response.body)
    end

    def build_workflow_remove_emails(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_workflow_remove_emails(response)
      Nokogiri.XML(response.body)
    end

    def build_workflow_start(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_workflow_start(response)
      Nokogiri.XML(response.body)
    end

    def build_workflow_stop(options)
      soap_envelope(options) do |xml|
      end
    end

    def parse_workflow_stop(response)
      Nokogiri.XML(response.body)
    end

    protected
      def add_credentials!(xml)
        xml.Creds(:xmlns=>"http://espapi.net/v1/components/credentials") do |cred|
          cred.AccountName(@credentials["AccountName"])
          cred.Password(@credentials["Password"])
          cred.Enc(@credentials["Enc"])
        end
      end

      def response_to_object(response)
      end
  end
end

