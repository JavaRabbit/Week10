class Die

  # constant is either 9TJQKA
  FACES = %w[ 9 T J Q K A ]

  #same as
  # FACES = ["9, "T", "J", "Q", "K", "A"]

  attr_reader :top_face

  def new
    roll #call the roll method
  end

  def roll
    # this will pick one from FACES
    #@top_face = FACES.sample
    @top_face = FACES.sample

  end


end
