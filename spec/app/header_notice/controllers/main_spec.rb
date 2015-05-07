require 'spec_helper'

module HeaderNotice
  describe MainController do
    let(:controller) { MainController.new }

    before do
      allow(controller.channel).to receive(:status).and_return(false)
    end

    describe "#notice_available?" do
      it "is true if page is reloading" do
        allow(controller.page).to receive(:_reloading).and_return(true)
        expect(controller.notice_available?).to eq true
      end

      it "is true if channel is reconnecting" do
        allow(controller.channel).to receive(:status).and_return(:reconnecting)
        expect(controller.notice_available?).to eq true
      end

      it "is true if page was reconnected" do
        allow(controller.page).to receive(:_reconnected).and_return(true)
        expect(controller.notice_available?).to eq true
      end

      it "is true if there is any flash" do
        allow(controller).to receive(:flash).and_return(
          _errors: ["yep"]
        )
        expect(controller.notice_available?).to eq true
      end
    end

    describe "#color_for_flash_key" do
      it "is green for successes" do
        expect(controller.color_for_flash_key('successes')).to eq 'green'
      end

      it "is red for errors" do
        expect(controller.color_for_flash_key('errors')).to eq 'red'
      end
    end
  end
end if RUBY_PLATFORM != 'opal'
