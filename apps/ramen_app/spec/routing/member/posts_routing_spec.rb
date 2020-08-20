require "rails_helper"

RSpec.describe Member::PostsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/member/posts").to route_to("member/posts#index")
    end

    it "routes to #new" do
      expect(get: "/member/posts/new").to route_to("member/posts#new")
    end

    it "routes to #show" do
      expect(get: "/member/posts/1").to route_to("member/posts#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/member/posts/1/edit").to route_to("member/posts#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/member/posts").to route_to("member/posts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/member/posts/1").to route_to("member/posts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/member/posts/1").to route_to("member/posts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/member/posts/1").to route_to("member/posts#destroy", id: "1")
    end
  end
end
