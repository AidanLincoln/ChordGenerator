require 'pry'

Collection.delete_all
CollectionsNote.delete_all
Note.delete_all
octave = ['A', 'A#', 'B', 'B#', 'C', 'C#', 'D', 'D#', 'E', 'E#', 'F', 'F#', 'G', 'G#']

scales = [
    {:name => 'C Major', :notes => ['C', 'D', 'E', 'F', 'G', 'A', 'B']}, 
    {:name => 'C# Major', :notes => ['C#', 'D#', 'E#', 'F#', 'G#', 'A#', 'B#']}, 
    {:name => 'D Major', :notes => ['D', 'E', 'F#', 'G', 'A', 'B', 'C#']}, 
    {:name => 'E Major', :notes => ['E', 'F#', 'G#', 'A', 'B', 'C#', 'D#']}, 
    {:name => 'F Major', :notes => ['F', 'G', 'A', 'A#', 'C', 'D', 'E']}, 
    {:name => 'F# Major', :notes => ['F#', 'G#', 'A#', 'B', 'C#', 'D#', 'E#']},
    {:name => 'G Major', :notes => ['G', 'A', 'B', 'C', 'D', 'E', 'F#']}, 
    {:name => 'A Major', :notes => ['A', 'B', 'C#', 'D', 'E', 'F#', 'G#']},  
    {:name => 'B Major', :notes => ['B', 'C#', 'D#', 'E', 'F#', 'G#', 'A#']},
    {:name => 'C Minor', :notes => ['C', 'D', 'D#', 'F', 'G', 'G#', 'A#']}, 
    {:name => 'C# Minor', :notes => ['C#', 'D#', 'E', 'F#', 'G#', 'A', 'B']}, 
    {:name => 'D Minor', :notes => ['D', 'E', 'F', 'G', 'A', 'A#', 'C']}, 
    {:name => 'D# Minor', :notes => ['D#', 'E#', 'F#', 'G#', 'A#', 'B', 'C#']}, 
    {:name => 'E Minor', :notes => ['E', 'F#', 'G', 'A', 'B', 'C', 'D']}, 
    {:name => 'F Minor', :notes => ['F', 'G', 'G#', 'A#', 'C', 'C#', 'D#']}, 
    {:name => 'F# Minor', :notes => ['F#', 'G#', 'A', 'B', 'C#', 'D', 'E']},
    {:name => 'G Minor', :notes => ['G', 'A', 'A#', 'C', 'D', 'D#', 'F']}, 
    {:name => 'G# Minor', :notes => ['G#', 'A#', 'B', 'C#', 'D#', 'E', 'F#']}, 
    {:name => 'A Minor', :notes => ['A', 'B', 'C', 'D', 'E', 'F', 'G']}, 
    {:name => 'A# Minor', :notes => ['A#', 'B#', 'C#', 'D#', 'F', 'F#', 'G#']}, 
    {:name => 'B Minor', :notes => ['B', 'C#', 'D', 'E', 'F#', 'G', 'A']}
]
octave.each do |note|
    Note.create(name: note)
end

scales.each do |scale|
    Collection.create(form: "scale", name: scale[:name])
end

scales.each do |scale_hash|
    i=Collection.find_by(name: scale_hash[:name])
    scale_hash[:notes].each do |note|
        b = Note.find_by(name: "#{note}")
        CollectionsNote.create(note_id: b.id, collection_id: i.id)
    end
end
 


