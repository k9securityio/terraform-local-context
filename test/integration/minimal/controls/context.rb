require 'json'

expect_name = "testbucket"
expect_env = "testenv"
expect_app = "testapp"
expect_owner = "platform"

random_suffix = attribute 'random_id-hex', {}
actual_minimal_context_tags = attribute 'minimal_context-tags', {}
actual_full_context_tags = attribute 'full_context-tags', {}

all_tag_maps = [
    actual_minimal_context_tags,
    actual_full_context_tags,
]

#require 'pry'; binding.pry; #uncomment to jump into the debugger

control 'context' do

  describe "all tag maps" do
    all_tag_maps.each_with_index do |a_tag_map, i|
      it "should have standard entries (#{i})" do
        expect(a_tag_map).to include(
                                 # Identity & Ownership
                                 "Owner" => expect_owner,
                                 "Environment" => expect_env,
                                 "Application" => expect_app,
                                 "ManagedBy" => "Terraform",
                             )
      end
    end
  end

  describe "tag map for full context" do
    it "should have optional entries" do
      expect(actual_full_context_tags).to include(
                               # Identity & Ownership
                               "Name" => expect_name,
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

