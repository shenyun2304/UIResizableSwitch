# UIResizableSwitch
##Since the default UISwitch cannot be resize in storyboard...

###Usage

1.select a UIView object  

![select a UIView object](https://github.com/shenyun2304/UIResizableSwitch/blob/master/img1.png)

2.drag it into your storyboard

![drag it into your storyboard](https://github.com/shenyun2304/UIResizableSwitch/blob/master/img2.png)

3.set the constrain for the view

![drag it into your storyboard](https://github.com/shenyun2304/UIResizableSwitch/blob/master/img3.png)

3.change UIView class: UIResizableSwitch

![drag it into your storyboard](https://github.com/shenyun2304/UIResizableSwitch/blob/master/img4.png)

4.then your UIView object will look like this

![drag it into your storyboard](https://github.com/shenyun2304/UIResizableSwitch/blob/master/img5.png)

5.support UIControlEvents.ValueChanged event

~~~~swift
@IBOutlet weak var sw: UIResizableSwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sw.addTarget(self, action: "actionValueChange:", forControlEvents: UIControlEvents.ValueChanged)
        
        // Do any additional setup after loading the view.
    }
    
    func actionValueChange(sender: UIResizableSwitch) {
        println("value change to:\(sender.on)")
    }
~~~~

or

~~~~swift
@IBAction func actionResizableSwitchValueChange(sender: UIResizableSwitch) {
        
    }

~~~~

6.change it value manually 

~~~~swift
sw.on = true // or false, animation is false

sw.setOn(true,animated:true) // with animation

~~~~

7.directly deal with the UISwitch inside UIResizableSwitch

~~~~swift
sw.customSwitch

~~~~

8.set initial on in the viewDidLoad if needed, the initialOn default is true

~~~~swift
sw.initialOn = false

~~~~
