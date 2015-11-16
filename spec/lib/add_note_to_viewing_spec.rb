require 'spec_helper'

describe ViewingNotebook do
  describe '.add_note_to_viewing' do
    let(:repo) { ViewingNotebook.repo }

    it 'adds a new note to viewing' do
      expect { ViewingNotebook.add_note_to_viewing('speak @ Guru-SP', 3) }.
					to change{ repo.viewings[3].notes }.by(1)
    end

    context 'when note is blank' do
      subject(:add_blank_note) { ViewingNotebook.add_note_to_viewing('', 3) }

      it 'does not persist' do
        expect { add_blank_note }.to_not change{ repo.viewings[3].notes }
      end

      it { eq(false) }
    end
  end
end
