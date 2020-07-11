require 'report'
require 'byebug'

describe Report do
  let(:report) { Report.new }

  describe '#print_header' do
    context 'not have hook' do
      it 'throws error' do
        expect { report.print }.to raise_error('Header is empty')
      end
    end

    context 'have a hook' do
      before { allow(report).to receive(:print_header).and_return 'header' }

      it 'not throw an exception' do
        expect { report.print_header }.not_to raise_error
      end
    end
  end

  describe '#print_body' do
    context 'not have hook' do
      it 'throws error' do
        expect { report.print_body }.to raise_error('Body is empty')
      end
    end

    context 'have a hook' do
      before { allow(report).to receive(:print_body).and_return 'body' }

      it 'not throw an exception' do
        expect { report.print_body }.not_to raise_error
      end
    end
  end

  describe '#print_title' do
    context 'have a hook' do
      before { allow(report).to receive(:print_title).and_return 'title' }

      it 'not throw an exception' do
        expect { report.print_title }.not_to raise_error
      end
    end
  end

  describe '#print_footer' do
    context 'have a hook' do
      before { allow(report).to receive(:print_footer).and_return 'footer' }

      it 'not throw an exception' do
        expect { report.print_title }.not_to raise_error
      end
    end
  end

  describe '#print' do
    context 'hooks are not set' do
      it 'raise exception' do
        expect { report.print }.to raise_error('Header is empty')
      end
    end

    context 'hooks are set' do
      before do
        allow(report).to receive(:print_header).and_return(nil)
        allow(report).to receive(:print_body).and_return(nil)
        allow(report).to receive(:print_footer).and_return(nil)
      end

      it 'not raise exception' do
        expect { report.print }.not_to raise_error
      end
    end
  end
end
