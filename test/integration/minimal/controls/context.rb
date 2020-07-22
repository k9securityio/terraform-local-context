require 'json'

expect_env = "testenv"
expect_app = "testapp"
expect_owner = "platform"

random_suffix = attribute 'random_id-hex', {}
actual_full_context_tags = attribute 'full_context-tags', {}
expect_name = "testbucket"

all_tag_maps = [actual_full_context_tags]

#require 'pry'; binding.pry; #uncomment to jump into the debugger

control 'context' do

  describe "all tag maps" do
    all_tag_maps.each do |a_tag_map|
      it "should have standard entries (#{a_tag_map})" do
        expect(a_tag_map).to include(
                                 # Identity & Ownership
                                 "Owner" => expect_owner,
                                 "Name" => expect_name,
                                 "Environment" => expect_env,
                                 "Application" => expect_app,
                                 "ManagedBy" => "Terraform",
                                 "Role" => "blob store",
                                 "BusinessUnit" => "Enterprise Solutions",
                                 "BusinessProcess" => "Product",
                                 "CostCenter" => "C1234",
                                 "ComplianceScheme" => "HIPAA",

                                 # Information Security
                                 "Confidentiality" => "Internal",
                                 "Integrity" => "0.9999",
                                 "Availability" => "0.999",

                                 # Custom
                                 "CustomKey" => "CustomValue",
                             )
        
      end
    end
  end

end

