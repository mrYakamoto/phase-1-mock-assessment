require_relative '../teacher'

describe Teacher do
  let(:jan) { Teacher.new({name: "Jan", age: 35}) }
  let(:default_teacher) { Teacher.new }

  it "offers high fives" do
    expect(jan.offer_high_five).to eq("High five!")
  end

  it "allows the name to change" do
    jan.name = "Jannifer"
    expect(jan.name).to eq("Jannifer")
  end

  describe "default behavior" do
    it "fills in '' for name" do
      expect(default_teacher.name).to eq('')
    end

    it "sets age to 0" do
      expect(default_teacher.age).to be(0)
    end

    it "sets target raise to 1000" do
      expect(default_teacher.target_raise).to be(1000)
    end
  end

  context "#set_phase" do
    it "starts off in phase 3" do
      expect(jan.phase).to be(3)
    end

    it "changes the phase" do
      jan.set_phase(1)
      expect(jan.phase).to be(1)
    end

    it "responds with enthusiasm" do
      response = jan.set_phase(1)
      expect(response).to eq("Cool, I've always wanted to teach phase 1!")
    end
  end

  context "#teach_stuff" do
    it "teaches stuff in a real sassy manner" do
      response = jan.teach_stuff
      expect(response).to eq("Listen, class, this is how everything works, fo SHO! *drops flat-out insane knowledge bomb* ... You're welcome. *saunters away*")
    end
  end

  describe "salary functionality" do
    it "has a readable target raise of 1000" do
      expect(jan.target_raise).to be(1000)
    end

    it "allows the setting of salary" do
      # ONE MEEEEEELLION DOLLARS!!!
      jan.set_salary(1000000)
      expect(jan.salary).to be (1000000)
    end

    it "increases salary with a good performance review" do
      jan.set_salary(1000000)
      jan.set_performance_rating(100)
      expect(jan.salary).to be(1001000)
    end
  end

  describe "feedback acceptance" do
    before(:each) do
      jan.set_salary(1000000)
    end

    it "is gracious" do
      response = jan.set_performance_rating(15)
      expect(response).to eq("Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time.")
    end

    it "celebrates good feedback" do
      response = jan.set_performance_rating(100)
      expect(response).to eq("Yay, I'm a great employee!")
    end
  end
end
