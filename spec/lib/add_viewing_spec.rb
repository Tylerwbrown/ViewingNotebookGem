require 'spec_helper'

describe ViewingNotebook do
  describe '.add_viewing' do
    let(:repo) { ViewingNotebook.repo }

    it 'adds a new viewing' do
      expect { ViewingNotebook.add_viewing('speak @ Guru-SP') }.
					to change{ repo.count }.by(1)
    end

    context 'when title is blank' do
      subject(:add_blank_viewing) { ViewingNotebook.add_viewing('') }

      it 'does not persist' do
        expect { add_blank_viewing }.to_not change{ repo.count }
      end

      it { eq(false) }
    end
  end
end
