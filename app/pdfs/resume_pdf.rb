class ResumePdf < Prawn::Document
	def initialize()
		super()
		maroon = "800000"
		white = 'ffffff'
		gray = "a6a6a6"
		black = "000000"

		font_families.update("EB_Garamond" => {
			:normal => "#{Rails.root.join("app/assets/fonts/EB_Garamond/static/EBGaramond-Regular.ttf")}",
			:italic => "#{Rails.root.join("app/assets/fonts/EB_Garamond/static/EBGaramond-Italic.ttf")}",
			:bold => "#{Rails.root.join("app/assets/fonts/EB_Garamond/static/EBGaramond-Bold.ttf")}"
		})
		font "EB_Garamond"

		#Header Block
		fill_color maroon 
    	fill { rectangle [-40, 760], 700, 75} 
    	fill_color white
    	text_box "Jordan Parker",
    	size: 24,
		align: :center,
		at: [0, 750]
    	transparent(0.50) do
	    	fill_color maroon 
	    	fill { rectangle [-40, 700], 700, 25} 
		end
		text_box "Email: parkerj4321@gmail.com |",
		at: [0, 720],
		align: :left

		text_box "Phone: (901) 679-6270",
		at: [0, 720],
		align: :center

		text_box "| Portfolio: www.jpdevelops.com ",
		at: [0, 720],
		align: :right
		
		text_box "LinkedIn: www.linkedin.com/in/johnsonpark ",
		at: [0, 701],
		align: :center
		#End Header Block
		
		#Personal Info
		fill_color black
		text_box "Profile", 
		size: 18,
		at: [0, 650]
		stroke do
	      stroke_color maroon
	      line_width 1
	      horizontal_line 0, 125, :at => 629
	    end

	    text_box "Inquisitive and Relentless. I've been developing for over a couple of years and started by self teaching and building projects on my own. Eventually, I was hired by a start-up company, Fix, where I really got to prove and also learn the ins and outs of a full-stack developer. I've always had an immense amount of passion for technology and the complexities behind how and why they work. And the philosophy behind my work ethic is 'If they are willing to help me learn, then I'm willing to apply my knowledge to help them grow.' ",
	    size: 10.5,
		at: [0, 625],
		width: 200,
		align: :left,
		overflow: :shrink_to_fit,
		min_font_size: 9
		#End of Personal Info
		#Skill Set Block
		fill_color black
		text_box "Skill Set", 
		size: 18,
		at: [0, 440]
		stroke do
	      stroke_color maroon
	      line_width 1
	      horizontal_line 0, 125, :at => 419
	    end
	    text_box "Programming Language",
	    at: [0, 420],
	    size: 11,
	    style: :italic
	    text_box "Ruby",
	    at: [0, 401],
	    size: 10
	    fill_color black 
		stroke do
			stroke_color gray
	    	rectangle [100, 395], 100, 5 
	    end
	    fill {rectangle [100, 395], 75, 5}
	    text_box "Python",
	    at: [0, 386],
	    size: 10
	    stroke do
	    	rectangle [100, 380], 100, 5 
	    end

	    fill {rectangle [100, 380], 50, 5}

    	text_box "Javascript",
	    at: [0, 371],
	    size: 10
	    fill_color black 
	    stroke do
	    	rectangle [100, 365], 100, 5 
	    end
	    fill {rectangle [100, 365], 75, 5}

    	text_box "HTML/CSS",
	    at: [0, 356],
	    size: 10
	    stroke do
	    	rectangle [100, 350], 100, 5 
	    end
	    fill {rectangle [100, 350], 90, 5}

    	text_box "Java",
	    at: [0, 341],
		size: 10
		stroke do
	      stroke_color maroon
	      line_width 1
	      horizontal_line 0, 125, :at => 320
	    end
		stroke do
			stroke_color gray
	    	rectangle [100, 335], 100, 5 
	    end
	    fill {rectangle [100, 335], 30, 5}
	    text_box "Frameworks & Software",
	    at: [0, 318],
	    size: 11,
	    style: :italic
	    text_box "Rails",
	    at: [0, 296],
	    size: 10
	    fill_color black 
	    stroke do
	    	rectangle [100, 290], 100, 5 
	    end
	    fill {rectangle [100, 290], 60, 5}

    	text_box "React",
	    at: [0, 281],
	    size: 10
	    fill_color black 
	    stroke do
	    	rectangle [100, 275], 100, 5 
	    end
	    fill {rectangle [100, 275], 70, 5} 

    	text_box "Postgres",
	    at: [0, 266],
	    size: 10
	    fill_color black 
	    stroke do
	    	rectangle [100, 260], 100, 5 
	    end
	    fill {rectangle [100, 260], 40, 5}

    	text_box "Gatsby",
	    at: [0, 251],
	    size: 10
	    fill_color black 
	    stroke do
	    	rectangle [100, 245], 100, 5 
	    end
	    fill {rectangle [100, 245], 50, 5}

    	stroke do
	      stroke_color maroon
	      line_width 1
	      horizontal_line 0, 125, :at => 230
	    end

    	text_box "Operating Systems",
	    at: [0, 227],
	    size: 11,
	    style: :italic

	    text_box "MacOS",
	    at: [0, 201],
	    size: 10
	    fill_color black 
		stroke do
			stroke_color gray
	    	rectangle [100, 195], 100, 5 
	    end
	    fill {rectangle [100, 195], 85, 5}

    	text_box "Windows10",
	    at: [0, 186],
	    size: 10
	    fill_color black 
	    stroke do
	    	rectangle [100, 180], 100, 5 
	    end
	    fill {rectangle [100, 180], 50, 5}

    	text_box "Linux",
	    at: [0, 171],
	    size: 10
	    fill_color black 
	    stroke do
	    	rectangle [100, 165], 100, 5 
	    end
	    fill {rectangle [100, 165], 65, 5}

		stroke do
	      stroke_color maroon
	      line_width 1
	      horizontal_line 0, 125, :at => 150
	    end

    	text_box "Soft Skills",
	    at: [0, 145],
	    size: 11,
	    style: :italic
	    text_box "Communication",
	    at: [0, 126],
	    size: 10
	    fill_color black 
		stroke do
			stroke_color gray
	    	rectangle [100, 120], 100, 5 
	    end
	    fill {rectangle [100, 120], 80, 5}

    	text_box "Team work",
	    at: [0, 111],
	    size: 10
	    fill_color black 
	    stroke do
	    	rectangle [100, 105], 100, 5 
	    end
	    fill {rectangle [100, 105], 90, 5}

    	text_box "Flexibility",
	    at: [0, 96],
	    size: 10
	    fill_color black 
	    stroke do
	    	rectangle [100, 90], 100, 5 
	    end
	    fill {rectangle [100, 90], 90, 5}

    	text_box "Learning Capacity",
	    at: [0, 81],
	    size: 10
	    fill_color black 
	    stroke do
	    	rectangle [100, 75], 100, 5 
	    end
	    fill {rectangle [100, 75], 100, 5}
		#End of Skill Set Block

		#====================#
		#====SECOND COLUMN===#
		#====================#

		#Education Block
		fill_color black
		text_box "Education", 
		size: 18,
		at: [300, 650]
		stroke do
	      stroke_color maroon
	      line_width 1
	      horizontal_line 300, 425, :at => 629
	    end
	    text_box "Code Crew | Memphis, TN | Apprentice Developer",
	    at: [300, 625],
	    size: 11,
	    style: :bold
	    text_box "July 2018 - December 2018",
	  	at: [300, 610],
	    size: 11,
		style: :bold
		stroke do
	      stroke_color gray
	      line_width 1
	      horizontal_line 300, 430, :at => 595
	    end
	    text_box "-- Full-time software development boot-camp, with intensive training in front-end, and back-end technologies.",
	  	at: [300, 590],
	    size: 10,
	    width: 200,
	    align: :left

	   	text_box "Middle Tennessee State University | Murfreesboro,TN",
	    at: [300, 540],
	    size: 11,
	    style: :bold
	    text_box "August 2010 - Augsust 2015",
	  	at: [300, 513],
	    size: 11,
		style: :bold
		stroke do
	      stroke_color gray
	      line_width 1
	      horizontal_line 300, 435, :at => 500
	    end
	    text_box "--B.S. Recording Industry",
	    at: [300, 498],
	    size: 10
		#End of Education Block
		#Professional Experience Block
		fill_color black
		text_box "Professional Experience", 
		size: 18,
		at: [300, 454]
		stroke do
	      stroke_color maroon
	      line_width 1
	      horizontal_line 300, 425, :at => 432
	    end
	    text_box "Fix | Memphis,TN | Full Stack Developer", 
		size: 11,
		at: [300, 425],
		style: :bold
		text_box "January 7, 2019 - Present",
		at: [300, 412],
		size: 11,
		style: :bold
		stroke do
	      stroke_color gray
	      line_width 1
	      horizontal_line 300, 425, :at => 397
	    end
		text_box "-- Build scalable systems for a fast growing start-up.
		-- Utilize modern technologies to make operable and efficient systems that reduce productivity time.
		-- Work with CMS such as Shopify, and build a front end ecommerce using React, Gatsby.js, and Redux.
		-- Handle deployment on cloud servers and utilize Amazon's cloud computing services. ",
		size: 10,
		at: [300, 390]

		text_box "LITE Memphis | Memphis,TN | Web Developer/Designer", 
		size: 11,
		at: [300, 280],
		style: :bold
		text_box "November 2019 - December 2019",
		at: [300, 255],
		size: 11,
		style: :bold
		stroke do
	      stroke_color gray
	      line_width 1
	      horizontal_line 300, 460, :at => 236
	    end
		text_box "-- Consult with client to understand businesss criteria.
		-- Wire frame and plan within the scope of the client's needs.
		-- Design and build a site that models and embodies that business. ",
		size: 10,
		at: [300, 230]

		text_box "CodeCrew | Memphis,TN | Teaching Assistant", 
		size: 11,
		at: [300, 165],
		style: :bold
		text_box "February 2019 - May 2019",
		at: [300, 152],
		size: 11,
		style: :bold
		stroke do
	      stroke_color gray
	      line_width 1
	      horizontal_line 300, 425, :at => 132
	    end
		text_box "-- Utilize learning platform to teach fundamentals.
		-- Engage in set lesson plans and create relatable tactics to help bridge programming fundamentals. 
		-- Prepare students for their individual project demostration ",
		size: 10,
		at: [300, 125]
		#End of Professional Experience Block
	end
end