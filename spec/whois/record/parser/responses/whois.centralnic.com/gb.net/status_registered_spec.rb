# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.centralnic.com/gb.net/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.centralnic.com.rb'

describe Whois::Record::Parser::WhoisCentralnicCom, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.centralnic.com/gb.net/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#disclaimer" do
    it do
      @parser.disclaimer.should == "This whois service is provided by CentralNic Ltd and only contains information pertaining to Internet domain names we have registered for our customers. By using this service you are agreeing (1) not to use any information presented here for any purpose other than determining ownership of domain names, (2) not to store or reproduce this data in any way, (3) not to use any high-volume, automated, electronic processes to obtain data from this service. Abuse of this service is monitored and actions in contravention of these terms will result in being permanently blacklisted. All data is (c) CentralNic Ltd https://www.centralnic.com/"
    end
  end
  describe "#domain" do
    it do
      @parser.domain.should == "hotel.gb.net"
    end
  end
  describe "#domain_id" do
    it do
      @parser.domain_id.should == "CNIC-DO605873"
    end
  end
  describe "#referral_whois" do
    it do
      lambda { @parser.referral_whois }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#referral_url" do
    it do
      lambda { @parser.referral_url }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#status" do
    it do
      @parser.status.should == ["PENDING DELETE", "PENDING DELETE RESTORABLE"]
    end
  end
  describe "#available?" do
    it do
      @parser.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      @parser.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      @parser.created_on.should be_a(Time)
      @parser.created_on.should == Time.parse("2008-12-04 05:56:57 UTC")
    end
  end
  describe "#updated_on" do
    it do
      @parser.updated_on.should be_a(Time)
      @parser.updated_on.should == Time.parse("2011-12-04 12:00:12 UTC")
    end
  end
  describe "#expires_on" do
    it do
      @parser.expires_on.should be_a(Time)
      @parser.expires_on.should == Time.parse("2011-12-04 23:59:59 UTC")
    end
  end
  describe "#registrar" do
    it do
      @parser.registrar.should be_a(_registrar)
      @parser.registrar.id.should           == "7145-IX"
      @parser.registrar.name.should         == nil
      @parser.registrar.organization.should == "InternetX GmbH"
      @parser.registrar.url.should          == "http://www.internetx.de/"
    end
  end
  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(_contact)
      @parser.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].id.should            == "INX-9925147net"
      @parser.registrant_contacts[0].name.should          == "boris schleinkofer"
      @parser.registrant_contacts[0].organization.should  == "p.s. consulting ag"
      @parser.registrant_contacts[0].address.should       == "hacklthalerstrasse 21c"
      @parser.registrant_contacts[0].city.should          == "kirchdorf"
      @parser.registrant_contacts[0].zip.should           == "83527"
      @parser.registrant_contacts[0].state.should         == "bayern"
      @parser.registrant_contacts[0].country.should       == nil
      @parser.registrant_contacts[0].country_code.should  == "DE"
      @parser.registrant_contacts[0].phone.should         == "+49.8072370230"
      @parser.registrant_contacts[0].fax.should           == "+49.80723702399"
      @parser.registrant_contacts[0].email.should         == "schleinkofer@ps-consulting-ag.com"
    end
  end
  describe "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should have(1).items
      @parser.admin_contacts[0].should be_a(_contact)
      @parser.admin_contacts[0].type.should          == Whois::Record::Contact::TYPE_ADMIN
      @parser.admin_contacts[0].id.should            == "INX-9925147net"
      @parser.admin_contacts[0].name.should          == "boris schleinkofer"
      @parser.admin_contacts[0].organization.should  == "p.s. consulting ag"
      @parser.admin_contacts[0].address.should       == "hacklthalerstrasse 21c"
      @parser.admin_contacts[0].city.should          == "kirchdorf"
      @parser.admin_contacts[0].zip.should           == "83527"
      @parser.admin_contacts[0].state.should         == "bayern"
      @parser.admin_contacts[0].country.should       == nil
      @parser.admin_contacts[0].country_code.should  == "DE"
      @parser.admin_contacts[0].phone.should         == "+49.8072370230"
      @parser.admin_contacts[0].fax.should           == "+49.80723702399"
      @parser.admin_contacts[0].email.should         == "schleinkofer@ps-consulting-ag.com"
    end
  end
  describe "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should have(1).items
      @parser.technical_contacts[0].should be_a(_contact)
      @parser.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      @parser.technical_contacts[0].id.should            == "INX-9925147net"
      @parser.technical_contacts[0].name.should          == "boris schleinkofer"
      @parser.technical_contacts[0].organization.should  == "p.s. consulting ag"
      @parser.technical_contacts[0].address.should       == "hacklthalerstrasse 21c"
      @parser.technical_contacts[0].city.should          == "kirchdorf"
      @parser.technical_contacts[0].zip.should           == "83527"
      @parser.technical_contacts[0].state.should         == "bayern"
      @parser.technical_contacts[0].country.should       == nil
      @parser.technical_contacts[0].country_code.should  == "DE"
      @parser.technical_contacts[0].phone.should         == "+49.8072370230"
      @parser.technical_contacts[0].fax.should           == "+49.80723702399"
      @parser.technical_contacts[0].email.should         == "schleinkofer@ps-consulting-ag.com"
    end
  end
  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(4).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].name.should == "d.ns14.net"
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].name.should == "a.ns14.net"
      @parser.nameservers[2].should be_a(_nameserver)
      @parser.nameservers[2].name.should == "c.ns14.net"
      @parser.nameservers[3].should be_a(_nameserver)
      @parser.nameservers[3].name.should == "b.ns14.net"
    end
  end
end
