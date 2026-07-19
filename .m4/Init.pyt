from pydub import AudioSegment

def process_audio(input_file, output_file):
    # Load the native M4A file
    audio = AudioSegment.from_file(input_file, format="m4a")
    
    # Extract metadata properties
    print(f"Duration: {audio.duration_seconds} seconds")
    print(f"Channels: {audio.channels}")
    print(f"Frame Rate: {audio.frame_rate} Hz")
    
    # Boost volume by 3 decibels
    quieter_audio = audio + 3
    
    # Export cleanly to an MP3 format
    quieter_audio.export(output_file, format="mp3", bitrate="192k")
    print(f"Successfully converted to {output_file}")

# Execution
process_audio("input.m4a", "output.mp3")
