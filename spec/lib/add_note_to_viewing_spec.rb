require 'spec_helper'

describe ViewingNotebook do
  before :each do
    @viewing = ViewingNotebook.add_viewing('horse')
  end

  describe '.add_note_to_viewing' do
    let(:repo) { ViewingNotebook.repo }

    it 'adds a new note to viewing' do
      expect { ViewingNotebook.add_note_to_viewing_by_viewing('I am a man.', @viewing) }.
					to change{ @viewing.notes.size }.by(1)
    end

    context 'when note is blank' do
      subject(:add_blank_note) { ViewingNotebook.add_note_to_viewing_by_viewing('', @viewing) }

      it 'does not persist' do
        expect { add_blank_note }.to_not change{ @viewing.notes }
      end

      it { eq(false) }
    end
  end
end
