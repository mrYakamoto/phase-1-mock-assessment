require_relative '../apprentice_teacher'

describe ApprenticeTeacher do
  let(:shamblebee) { ApprenticeTeacher.new({name: "Shambhavi", age: 21}) }
  let(:default_apprentice) { ApprenticeTeacher.new }

  it "allows the name to change" do
    shamblebee.name = "Shamblebee"
    expect(shamblebee.name).to eq("Shamblebee")
  end

  it "offers high fives" do
    expect(shamblebee.offer_high_five).to eq("High five!")
  end

  describe "default behavior" do
    it "fills in '' for name" do
      expect(default_apprentice.name).to eq('')
    end

    it "sets age to 0" do
      expect(default_apprentice.age).to be(0)
    end

    it "sets target raise to 800" do
      expect(default_apprentice.target_raise).to be(800)
    end
  end

  context "#set_phase" do
    it "starts off in phase 3" do
      expect(shamblebee.phase).to be(3)
    end

    it "changes the phase" do
      shamblebee.set_phase(1)
      expect(shamblebee.phase).to be(1)
    end

    it "responds with enthusiasm" do
      response = shamblebee.set_phase(1)
      expect(response).to eq("Cool, I've always wanted to teach phase 1!")
    end
  end

  context "#teach_stuff" do
    it "teaches stuff in a confident manner" do
      response = shamblebee.teach_stuff
      expect(response).to eq("Listen, class, this is how everything works. *drops crazy knowledge bomb* ... You're welcome.")
    end
  end

  describe "salary functionality" do
    it "has a readable target raise of 800" do
      expect(shamblebee.target_raise).to be(800)
    end

    it "allows the setting of salary" do
      # ONE MEEEEEELLION DOLLARS!!!
      shamblebee.salary = 1000000
      expect(shamblebee.salary).to be (1000000)
    end

    it "increases salary with a good performance review" do
      shamblebee.salary = 1000000
      shamblebee.set_performance_rating(100)
      expect(shamblebee.salary).to be(1000800)
    end
  end

  describe "feedback acceptance" do
    before(:each) do
      shamblebee.salary = 1000000
    end

    it "is gracious" do
      response = shamblebee.set_performance_rating(15)
      expect(response).to eq("Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time.")
    end

    it "celebrates good feedback" do
      response = shamblebee.set_performance_rating(100)
      expect(response).to eq("Yay, I'm a great employee!")
    end
  end
end
