require 'spec_helper'

describe ViewingNotebook do
  before(:each, :add_viewing => true) do
    ViewingNotebook.add_viewing('horse')
  end

  describe '.add_note_to_viewing', add_viewing: true do
    let(:repo) { ViewingNotebook.repo }

    it 'adds a new note to viewing' do
      expect { ViewingNotebook.add_note_to_viewing('speak @ Guru-SP', 0) }.
					to change{ ViewingNotebook.get_viewing(0).notes }.by(1)
    end

    context 'when note is blank' do
      subject(:add_blank_note) { ViewingNotebook.add_note_to_viewing('', 0) }

      it 'does not persist' do
        expect { add_blank_note }.to_not change{ ViewingNotebook.get_viewing(0).notes }
      end

      it { eq(false) }
    end
  end
end
