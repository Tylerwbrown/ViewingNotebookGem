require 'spec_helper'

describe ViewingNotebook do
  describe '.add_note' do
    let(:repo) { ViewingNotebook.repo }

    it 'adds a new note' do
      expect { ViewingNotebook.add_note('speak @ Guru-SP') }.
					to change{ repo.count }.by(1)
    end

    context 'when title is blank' do
      subject(:add_blank_note) { ViewingNotebook.add_note('') }

      it 'does not persist' do
        expect { add_blank_note }.to_not change{ repo.count }
      end

      it { eq(false) }
    end
  end
end
