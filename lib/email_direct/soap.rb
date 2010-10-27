require 'nokogiri'
require 'service_proxy/base'
require 'email_direct/service_proxy_patch'
require 'active_support/core_ext/hash/conversions'
ActiveSupport::XmlMini.backend = 'Nokogiri'
require 'email_direct/response'

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
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_account_get_active_emails(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_account_get_active_emails_simple(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_account_get_active_emails_simple(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_account_get_complaints(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_account_get_complaints(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_account_get_complaints_simple(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_account_get_complaints_simple(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_account_get_database_fields(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_account_get_database_fields(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_account_get_global_removes(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_account_get_global_removes(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_account_get_global_removes_simple(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_account_get_global_removes_simple(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_account_get_hard_bounces(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_account_get_hard_bounces(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_account_get_hard_bounces_simple(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_account_get_hard_bounces_simple(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_account_get_ip_information(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_account_get_ip_information(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_account_set_email_limit(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_account_set_email_limit(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_campaign_add(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_campaign_add(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_campaign_copy(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_campaign_copy(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_campaign_get_clicks(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_campaign_get_clicks(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_campaign_get_clicks_for_link(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_campaign_get_clicks_for_link(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_campaign_get_complaints(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_campaign_get_complaints(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_campaign_get_hard_bounces(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_campaign_get_hard_bounces(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_campaign_get_list_drafts(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_campaign_get_list_drafts(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_campaign_get_list_scheduled(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_campaign_get_list_scheduled(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_campaign_get_list_sent(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_campaign_get_list_sent(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_campaign_get_opens(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_campaign_get_opens(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_campaign_get_recipients(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_campaign_get_recipients(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_campaign_get_removes(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_campaign_get_removes(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_campaign_get_summary(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_campaign_get_summary(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_campaign_schedule(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_campaign_schedule(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_creative_add(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_creative_add(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_creative_create_folder(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_creative_create_folder(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_creative_get_creatives_for_folder(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_creative_get_creatives_for_folder(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_creative_get_folders(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_creative_get_folders(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_email_add(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_email_add(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_email_add_with_fields(options)
      email_direct_envelope(options) do |xml|
        #adjustments for activesupport list hash to EmailDirect specific xml
        xml.gsub!("<List>\n","")
        xml.gsub!("</List>\n","")
        xml.gsub!("<Publication>\n","")
        xml.gsub!("</Publication>\n","")
      end
    end

    def parse_email_add_with_fields(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_email_add_simple(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_email_add_simple(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_email_change(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_email_change(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_email_delete(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_email_delete(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_email_delete_simple(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_email_delete_simple(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_email_get_history(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_email_get_history(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_email_get_properties(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_email_get_properties(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_email_remove(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_email_remove(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_email_remove_simple(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_email_remove_simple(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_email_update(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_email_update(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_filter_get_all(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_filter_get_all(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_filter_get_subscribers(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_filter_get_subscribers(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_filter_get_subscribers_simple(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_filter_get_subscribers_simple(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_list_add(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_list_add(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_list_delete(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_list_delete(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_list_get_all(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_list_get_all(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_list_get_members(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_list_get_members(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_private_label_create_account(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_private_label_create_account(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_private_label_get_child_accounts(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_private_label_get_child_accounts(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_private_label_set_api_password(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_private_label_set_api_password(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_publication_add(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_publication_add(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_publication_delete(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_publication_delete(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_publication_get_all(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_publication_get_all(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_publication_get_subscribers(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_publication_get_subscribers(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_publication_get_unsubscribes(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_publication_get_unsubscribes(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_relay_send_create_category(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_relay_send_create_category(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_relay_send_get_categories(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_relay_send_get_categories(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_relay_send_get_category_stats(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_relay_send_get_category_stats(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_relay_send_get_category_stats_for_tags(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_relay_send_get_category_stats_for_tags(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_relay_send_get_details_for_receipt(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_relay_send_get_details_for_receipt(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_relay_send_get_summary_for_receipts(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_relay_send_get_summary_for_receipts(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_relay_send_send_email(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_relay_send_send_email(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_relay_send_send_email_vars(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_relay_send_send_email_vars(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_short_url_create(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_short_url_create(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_short_url_get_stats(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_short_url_get_stats(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_short_url_update_link(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_short_url_update_link(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_source_add(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_source_add(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_source_delete(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_source_delete(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_source_get_all(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_source_get_all(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_stats_day_of_week(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_stats_day_of_week(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_stats_domain_over_time(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_stats_domain_over_time(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_stats_hourly(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_stats_hourly(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_stats_over_time(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_stats_over_time(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_stats_source_over_time(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_stats_source_over_time(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_stats_summary(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_stats_summary(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_stats_top_domains(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_stats_top_domains(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_stats_top_sources(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_stats_top_sources(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_suppression_list_add(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_suppression_list_add(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_suppression_list_add_domains(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_suppression_list_add_domains(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_suppression_list_add_emails(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_suppression_list_add_emails(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_suppression_list_delete(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_suppression_list_delete(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_suppression_list_get_all(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_suppression_list_get_all(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_suppression_list_get_members_simple(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_suppression_list_get_members_simple(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_workflow_add_existing_emails(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_workflow_add_existing_emails(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_workflow_add_to_workflows(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_workflow_add_to_workflows(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_workflow_get_all(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_workflow_get_all(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_workflow_get_send_nodes(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_workflow_get_send_nodes(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_workflow_get_stats(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_workflow_get_stats(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_workflow_get_stats_for_send_node(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_workflow_get_stats_for_send_node(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_workflow_remove_emails(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_workflow_remove_emails(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_workflow_start(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_workflow_start(response)
      ::EmailDirect::Response.new(response.body)
    end

    def build_workflow_stop(options)
      email_direct_envelope(options) do |xml|
      end
    end

    def parse_workflow_stop(response)
      ::EmailDirect::Response.new(response.body)
    end

    protected
      def add_credentials!(xml)
        xml.Creds(:xmlns=>"http://espapi.net/v1/components/credentials") do |cred|
          cred.AccountName(@credentials["AccountName"])
          cred.Password(@credentials["Password"])
          cred.Enc(@credentials["Enc"])
        end
      end

    # same as ServiceProxy email_direct_envelope method, except:
    # 1) inject options hash directly
    # 2) yields the raw xml (for incompatible activesupport style of array to xml)
    #    a hash with {"Lists" => [{:int => 1}, {:int => 2}]} will yields xml <Lists><List><int>1</int><List><int>2</int></Lists>
    # 3) replace strange </ai> in generated xml
    def email_direct_envelope(options, &block)
      xsd = 'http://www.w3.org/2001/XMLSchema'
      env = 'http://schemas.xmlsoap.org/soap/envelope/'
      xsi = 'http://www.w3.org/2001/XMLSchema-instance'
      data = options.clone
      data.delete(:method)
      data = data.to_xml(:skip_instruct => true, :skip_types => true).gsub("<hash>\n",'').gsub("</hash>\n",'')
      xml = Builder::XmlMarkup.new
      xml.env(:Envelope, 'xmlns:xsd' => xsd, 'xmlns:env' => env, 'xmlns:xsi' => xsi) do
        xml.env(:Body) do
          xml.__send__(options[:method].to_sym, 'xmlns' => self.target_namespace) do
            add_credentials!(xml)
            xml << data
          end
        end
      end
      raw = xml.target!
      raw = raw.gsub('<ai/>','')
      yield(raw) if block_given?
      raw
    end
  end
end

