#  StackView with the custom XIB view with scrolling support.
This project demonstrate the usage of the UIStackView to embed the custom UIViews created from the XIB file. There are some caveats to take care while implementing this embedding.

## UIStackView inside the UIScrollView.
As UIStackView does not support the scrolling by default, we would need to embed it into the UIScrollView to support the nice scrolling support for viewing all of the views in it. As we are adding the views programatically in the StackView on the fly depending on the data model, we have added the dummy placeholder view in it to silent the warnings in the XCode IB as without it, Scroll View would complain for ambiguous height.

Also, we need to make sure that the XIB file has the correct constraints set so that it can be used in the UiStackView with proper rendering. Each label needs to have the width and the vertical spacing set from the neighbor to render them correctly in the UIStackView.

## Demo
![StackViewDemo](StackViewDemo.mov)


