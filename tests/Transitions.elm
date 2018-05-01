module Transitions exposing (..)

import Css.Global exposing (p)
import Css.Preprocess exposing (stylesheet)
import Css.Transitions exposing (..)
import Expect
import Test exposing (..)
import TestUtil exposing (prettyPrint)


testDuration : Test
testDuration =
    describe "Test transitions with given duration"
        (testTransition
            [ ( background 35, "background 35ms  " )
            , ( backgroundColor 35, "background-color 35ms  " )
            , ( backgroundPosition 35, "background-position 35ms  " )
            , ( backgroundSize 35, "background-size 35ms  " )
            , ( border 35, "border 35ms  " )
            , ( borderBottom 35, "border-bottom 35ms  " )
            , ( borderBottomColor 35, "border-bottom-color 35ms  " )
            , ( borderBottomLeftRadius 35, "border-bottom-left-radius 35ms  " )
            , ( borderBottomRightRadius 35, "border-bottom-right-radius 35ms  " )
            , ( borderBottomWidth 35, "border-bottom-width 35ms  " )
            , ( borderColor 35, "border-color 35ms  " )
            , ( borderLeft 35, "border-left 35ms  " )
            , ( borderLeftColor 35, "border-left-color 35ms  " )
            , ( borderLeftWidth 35, "border-left-width 35ms  " )
            , ( borderRadius 35, "border-radius 35ms  " )
            , ( borderRight 35, "border-right 35ms  " )
            , ( borderRightColor 35, "border-right-color 35ms  " )
            , ( borderRightWidth 35, "border-right-width 35ms  " )
            , ( borderTop 35, "border-top 35ms  " )
            , ( borderTopColor 35, "border-top-color 35ms  " )
            , ( borderTopLeftRadius 35, "border-top-left-radius 35ms  " )
            , ( borderTopRightRadius 35, "border-top-right-radius 35ms  " )
            , ( borderTopWidth 35, "border-top-width 35ms  " )
            , ( borderWidth 35, "border-width 35ms  " )
            , ( bottom 35, "bottom 35ms  " )
            , ( boxShadow 35, "box-shadow 35ms  " )
            , ( caretColor 35, "caret-color 35ms  " )
            , ( clip 35, "clip 35ms  " )
            , ( clipPath 35, "clip-path 35ms  " )
            , ( color 35, "color 35ms  " )
            , ( columnCount 35, "column-count 35ms  " )
            , ( columnGap 35, "column-gap 35ms  " )
            , ( columnRule 35, "column-rule 35ms  " )
            , ( columnRuleColor 35, "column-rule-color 35ms  " )
            , ( columnRuleWidth 35, "column-rule-width 35ms  " )
            , ( columnWidth 35, "column-width 35ms  " )
            , ( columns 35, "columns 35ms  " )
            , ( filter 35, "filter 35ms  " )
            , ( flex 35, "flex 35ms  " )
            , ( flexBasis 35, "flex-basis 35ms  " )
            , ( flexGrow 35, "flex-grow 35ms  " )
            , ( flexShrink 35, "flex-shrink 35ms  " )
            , ( font 35, "font 35ms  " )
            , ( fontSize 35, "font-size 35ms  " )
            , ( fontSizeAdjust 35, "font-size-adjust 35ms  " )
            , ( fontStretch 35, "font-stretch 35ms  " )
            , ( fontVariationSettings 35, "font-variation-settings 35ms  " )
            , ( fontWeight 35, "font-weight 35ms  " )
            , ( gridColumnGap 35, "grid-column-gap 35ms  " )
            , ( gridGap 35, "grid-gap 35ms  " )
            , ( gridRowGap 35, "grid-row-gap 35ms  " )
            , ( height 35, "height 35ms  " )
            , ( left 35, "left 35ms  " )
            , ( letterSpacing 35, "letter-spacing 35ms  " )
            , ( lineHeight 35, "line-height 35ms  " )
            , ( margin 35, "margin 35ms  " )
            , ( marginBottom 35, "margin-bottom 35ms  " )
            , ( marginLeft 35, "margin-left 35ms  " )
            , ( marginRight 35, "margin-right 35ms  " )
            , ( marginTop 35, "margin-top 35ms  " )
            , ( mask 35, "mask 35ms  " )
            , ( maskPosition 35, "mask-position 35ms  " )
            , ( maskSize 35, "mask-size 35ms  " )
            , ( maxHeight 35, "max-height 35ms  " )
            , ( maxWidth 35, "max-width 35ms  " )
            , ( minHeight 35, "min-height 35ms  " )
            , ( minWidth 35, "min-width 35ms  " )
            , ( objectPosition 35, "object-position 35ms  " )
            , ( offset 35, "offset 35ms  " )
            , ( offsetAnchor 35, "offset-anchor 35ms  " )
            , ( offsetDistance 35, "offset-distance 35ms  " )
            , ( offsetPath 35, "offset-path 35ms  " )
            , ( offsetRotate 35, "offset-rotate 35ms  " )
            , ( opacity 35, "opacity 35ms  " )
            , ( order 35, "order 35ms  " )
            , ( outline 35, "outline 35ms  " )
            , ( outlineColor 35, "outline-color 35ms  " )
            , ( outlineOffset 35, "outline-offset 35ms  " )
            , ( outlineWidth 35, "outline-width 35ms  " )
            , ( padding 35, "padding 35ms  " )
            , ( paddingBottom 35, "padding-bottom 35ms  " )
            , ( paddingLeft 35, "padding-left 35ms  " )
            , ( paddingRight 35, "padding-right 35ms  " )
            , ( paddingTop 35, "padding-top 35ms  " )
            , ( right 35, "right 35ms  " )
            , ( tabSize 35, "tab-size 35ms  " )
            , ( textIndent 35, "text-indent 35ms  " )
            , ( textShadow 35, "text-shadow 35ms  " )
            , ( top 35, "top 35ms  " )
            , ( transform 35, "transform 35ms  " )
            , ( transformOrigin 35, "transform-origin 35ms  " )
            , ( verticalAlign 35, "vertical-align 35ms  " )
            , ( visibility 35, "visibility 35ms  " )
            , ( width 35, "width 35ms  " )
            , ( wordSpacing 35, "word-spacing 35ms  " )
            , ( zIndex 35, "z-index 35ms  " )
            ]
        )


testDurationDelay : Test
testDurationDelay =
    describe "Test transitions with given duration and delay"
        (testTransition
            [ ( background2 35 145, "background 35ms 145ms " )
            , ( backgroundColor2 35 145, "background-color 35ms 145ms " )
            , ( backgroundPosition2 35 145, "background-position 35ms 145ms " )
            , ( backgroundSize2 35 145, "background-size 35ms 145ms " )
            , ( border2 35 145, "border 35ms 145ms " )
            , ( borderBottom2 35 145, "border-bottom 35ms 145ms " )
            , ( borderBottomColor2 35 145, "border-bottom-color 35ms 145ms " )
            , ( borderBottomLeftRadius2 35 145, "border-bottom-left-radius 35ms 145ms " )
            , ( borderBottomRightRadius2 35 145, "border-bottom-right-radius 35ms 145ms " )
            , ( borderBottomWidth2 35 145, "border-bottom-width 35ms 145ms " )
            , ( borderColor2 35 145, "border-color 35ms 145ms " )
            , ( borderLeft2 35 145, "border-left 35ms 145ms " )
            , ( borderLeftColor2 35 145, "border-left-color 35ms 145ms " )
            , ( borderLeftWidth2 35 145, "border-left-width 35ms 145ms " )
            , ( borderRadius2 35 145, "border-radius 35ms 145ms " )
            , ( borderRight2 35 145, "border-right 35ms 145ms " )
            , ( borderRightColor2 35 145, "border-right-color 35ms 145ms " )
            , ( borderRightWidth2 35 145, "border-right-width 35ms 145ms " )
            , ( borderTop2 35 145, "border-top 35ms 145ms " )
            , ( borderTopColor2 35 145, "border-top-color 35ms 145ms " )
            , ( borderTopLeftRadius2 35 145, "border-top-left-radius 35ms 145ms " )
            , ( borderTopRightRadius2 35 145, "border-top-right-radius 35ms 145ms " )
            , ( borderTopWidth2 35 145, "border-top-width 35ms 145ms " )
            , ( borderWidth2 35 145, "border-width 35ms 145ms " )
            , ( bottom2 35 145, "bottom 35ms 145ms " )
            , ( boxShadow2 35 145, "box-shadow 35ms 145ms " )
            , ( caretColor2 35 145, "caret-color 35ms 145ms " )
            , ( clip2 35 145, "clip 35ms 145ms " )
            , ( clipPath2 35 145, "clip-path 35ms 145ms " )
            , ( color2 35 145, "color 35ms 145ms " )
            , ( columnCount2 35 145, "column-count 35ms 145ms " )
            , ( columnGap2 35 145, "column-gap 35ms 145ms " )
            , ( columnRule2 35 145, "column-rule 35ms 145ms " )
            , ( columnRuleColor2 35 145, "column-rule-color 35ms 145ms " )
            , ( columnRuleWidth2 35 145, "column-rule-width 35ms 145ms " )
            , ( columnWidth2 35 145, "column-width 35ms 145ms " )
            , ( columns2 35 145, "columns 35ms 145ms " )
            , ( filter2 35 145, "filter 35ms 145ms " )
            , ( flex2 35 145, "flex 35ms 145ms " )
            , ( flexBasis2 35 145, "flex-basis 35ms 145ms " )
            , ( flexGrow2 35 145, "flex-grow 35ms 145ms " )
            , ( flexShrink2 35 145, "flex-shrink 35ms 145ms " )
            , ( font2 35 145, "font 35ms 145ms " )
            , ( fontSize2 35 145, "font-size 35ms 145ms " )
            , ( fontSizeAdjust2 35 145, "font-size-adjust 35ms 145ms " )
            , ( fontStretch2 35 145, "font-stretch 35ms 145ms " )
            , ( fontVariationSettings2 35 145, "font-variation-settings 35ms 145ms " )
            , ( fontWeight2 35 145, "font-weight 35ms 145ms " )
            , ( gridColumnGap2 35 145, "grid-column-gap 35ms 145ms " )
            , ( gridGap2 35 145, "grid-gap 35ms 145ms " )
            , ( gridRowGap2 35 145, "grid-row-gap 35ms 145ms " )
            , ( height2 35 145, "height 35ms 145ms " )
            , ( left2 35 145, "left 35ms 145ms " )
            , ( letterSpacing2 35 145, "letter-spacing 35ms 145ms " )
            , ( lineHeight2 35 145, "line-height 35ms 145ms " )
            , ( margin2 35 145, "margin 35ms 145ms " )
            , ( marginBottom2 35 145, "margin-bottom 35ms 145ms " )
            , ( marginLeft2 35 145, "margin-left 35ms 145ms " )
            , ( marginRight2 35 145, "margin-right 35ms 145ms " )
            , ( marginTop2 35 145, "margin-top 35ms 145ms " )
            , ( mask2 35 145, "mask 35ms 145ms " )
            , ( maskPosition2 35 145, "mask-position 35ms 145ms " )
            , ( maskSize2 35 145, "mask-size 35ms 145ms " )
            , ( maxHeight2 35 145, "max-height 35ms 145ms " )
            , ( maxWidth2 35 145, "max-width 35ms 145ms " )
            , ( minHeight2 35 145, "min-height 35ms 145ms " )
            , ( minWidth2 35 145, "min-width 35ms 145ms " )
            , ( objectPosition2 35 145, "object-position 35ms 145ms " )
            , ( offset2 35 145, "offset 35ms 145ms " )
            , ( offsetAnchor2 35 145, "offset-anchor 35ms 145ms " )
            , ( offsetDistance2 35 145, "offset-distance 35ms 145ms " )
            , ( offsetPath2 35 145, "offset-path 35ms 145ms " )
            , ( offsetRotate2 35 145, "offset-rotate 35ms 145ms " )
            , ( opacity2 35 145, "opacity 35ms 145ms " )
            , ( order2 35 145, "order 35ms 145ms " )
            , ( outline2 35 145, "outline 35ms 145ms " )
            , ( outlineColor2 35 145, "outline-color 35ms 145ms " )
            , ( outlineOffset2 35 145, "outline-offset 35ms 145ms " )
            , ( outlineWidth2 35 145, "outline-width 35ms 145ms " )
            , ( padding2 35 145, "padding 35ms 145ms " )
            , ( paddingBottom2 35 145, "padding-bottom 35ms 145ms " )
            , ( paddingLeft2 35 145, "padding-left 35ms 145ms " )
            , ( paddingRight2 35 145, "padding-right 35ms 145ms " )
            , ( paddingTop2 35 145, "padding-top 35ms 145ms " )
            , ( right2 35 145, "right 35ms 145ms " )
            , ( tabSize2 35 145, "tab-size 35ms 145ms " )
            , ( textIndent2 35 145, "text-indent 35ms 145ms " )
            , ( textShadow2 35 145, "text-shadow 35ms 145ms " )
            , ( top2 35 145, "top 35ms 145ms " )
            , ( transform2 35 145, "transform 35ms 145ms " )
            , ( transformOrigin2 35 145, "transform-origin 35ms 145ms " )
            , ( verticalAlign2 35 145, "vertical-align 35ms 145ms " )
            , ( visibility2 35 145, "visibility 35ms 145ms " )
            , ( width2 35 145, "width 35ms 145ms " )
            , ( wordSpacing2 35 145, "word-spacing 35ms 145ms " )
            , ( zIndex2 35 145, "z-index 35ms 145ms " )
            ]
        )


testDurationDelayTiming : Test
testDurationDelayTiming =
    describe "Test transitions with given duration, delay and timing function"
        (testTransition
            (List.concatMap
                (\( partial, propStr ) ->
                    List.map
                        (\( timingFunc, timingStr ) ->
                            ( partial timingFunc, propStr ++ timingStr )
                        )
                        [ ( easeIn, "ease-in" )
                        , ( easeOut, "ease-out" )
                        , ( linear, "linear" )
                        , ( ease, "ease" )
                        , ( easeInOut, "ease-in-out" )
                        , ( stepStart, "step-start" )
                        , ( stepEnd, "step-end" )
                        , ( cubicBezier 4 55 166 277, "cubic-bezier(4 , 55 , 166 , 277)" )
                        ]
                )
                [ ( background3 35 145, "background 35ms 145ms " )
                , ( backgroundColor3 35 145, "background-color 35ms 145ms " )
                , ( backgroundPosition3 35 145, "background-position 35ms 145ms " )
                , ( backgroundSize3 35 145, "background-size 35ms 145ms " )
                , ( border3 35 145, "border 35ms 145ms " )
                , ( borderBottom3 35 145, "border-bottom 35ms 145ms " )
                , ( borderBottomColor3 35 145, "border-bottom-color 35ms 145ms " )
                , ( borderBottomLeftRadius3 35 145, "border-bottom-left-radius 35ms 145ms " )
                , ( borderBottomRightRadius3 35 145, "border-bottom-right-radius 35ms 145ms " )
                , ( borderBottomWidth3 35 145, "border-bottom-width 35ms 145ms " )
                , ( borderColor3 35 145, "border-color 35ms 145ms " )
                , ( borderLeft3 35 145, "border-left 35ms 145ms " )
                , ( borderLeftColor3 35 145, "border-left-color 35ms 145ms " )
                , ( borderLeftWidth3 35 145, "border-left-width 35ms 145ms " )
                , ( borderRadius3 35 145, "border-radius 35ms 145ms " )
                , ( borderRight3 35 145, "border-right 35ms 145ms " )
                , ( borderRightColor3 35 145, "border-right-color 35ms 145ms " )
                , ( borderRightWidth3 35 145, "border-right-width 35ms 145ms " )
                , ( borderTop3 35 145, "border-top 35ms 145ms " )
                , ( borderTopColor3 35 145, "border-top-color 35ms 145ms " )
                , ( borderTopLeftRadius3 35 145, "border-top-left-radius 35ms 145ms " )
                , ( borderTopRightRadius3 35 145, "border-top-right-radius 35ms 145ms " )
                , ( borderTopWidth3 35 145, "border-top-width 35ms 145ms " )
                , ( borderWidth3 35 145, "border-width 35ms 145ms " )
                , ( bottom3 35 145, "bottom 35ms 145ms " )
                , ( boxShadow3 35 145, "box-shadow 35ms 145ms " )
                , ( caretColor3 35 145, "caret-color 35ms 145ms " )
                , ( clip3 35 145, "clip 35ms 145ms " )
                , ( clipPath3 35 145, "clip-path 35ms 145ms " )
                , ( color3 35 145, "color 35ms 145ms " )
                , ( columnCount3 35 145, "column-count 35ms 145ms " )
                , ( columnGap3 35 145, "column-gap 35ms 145ms " )
                , ( columnRule3 35 145, "column-rule 35ms 145ms " )
                , ( columnRuleColor3 35 145, "column-rule-color 35ms 145ms " )
                , ( columnRuleWidth3 35 145, "column-rule-width 35ms 145ms " )
                , ( columnWidth3 35 145, "column-width 35ms 145ms " )
                , ( columns3 35 145, "columns 35ms 145ms " )
                , ( filter3 35 145, "filter 35ms 145ms " )
                , ( flex3 35 145, "flex 35ms 145ms " )
                , ( flexBasis3 35 145, "flex-basis 35ms 145ms " )
                , ( flexGrow3 35 145, "flex-grow 35ms 145ms " )
                , ( flexShrink3 35 145, "flex-shrink 35ms 145ms " )
                , ( font3 35 145, "font 35ms 145ms " )
                , ( fontSize3 35 145, "font-size 35ms 145ms " )
                , ( fontSizeAdjust3 35 145, "font-size-adjust 35ms 145ms " )
                , ( fontStretch3 35 145, "font-stretch 35ms 145ms " )
                , ( fontVariationSettings3 35 145, "font-variation-settings 35ms 145ms " )
                , ( fontWeight3 35 145, "font-weight 35ms 145ms " )
                , ( gridColumnGap3 35 145, "grid-column-gap 35ms 145ms " )
                , ( gridGap3 35 145, "grid-gap 35ms 145ms " )
                , ( gridRowGap3 35 145, "grid-row-gap 35ms 145ms " )
                , ( height3 35 145, "height 35ms 145ms " )
                , ( left3 35 145, "left 35ms 145ms " )
                , ( letterSpacing3 35 145, "letter-spacing 35ms 145ms " )
                , ( lineHeight3 35 145, "line-height 35ms 145ms " )
                , ( margin3 35 145, "margin 35ms 145ms " )
                , ( marginBottom3 35 145, "margin-bottom 35ms 145ms " )
                , ( marginLeft3 35 145, "margin-left 35ms 145ms " )
                , ( marginRight3 35 145, "margin-right 35ms 145ms " )
                , ( marginTop3 35 145, "margin-top 35ms 145ms " )
                , ( mask3 35 145, "mask 35ms 145ms " )
                , ( maskPosition3 35 145, "mask-position 35ms 145ms " )
                , ( maskSize3 35 145, "mask-size 35ms 145ms " )
                , ( maxHeight3 35 145, "max-height 35ms 145ms " )
                , ( maxWidth3 35 145, "max-width 35ms 145ms " )
                , ( minHeight3 35 145, "min-height 35ms 145ms " )
                , ( minWidth3 35 145, "min-width 35ms 145ms " )
                , ( objectPosition3 35 145, "object-position 35ms 145ms " )
                , ( offset3 35 145, "offset 35ms 145ms " )
                , ( offsetAnchor3 35 145, "offset-anchor 35ms 145ms " )
                , ( offsetDistance3 35 145, "offset-distance 35ms 145ms " )
                , ( offsetPath3 35 145, "offset-path 35ms 145ms " )
                , ( offsetRotate3 35 145, "offset-rotate 35ms 145ms " )
                , ( opacity3 35 145, "opacity 35ms 145ms " )
                , ( order3 35 145, "order 35ms 145ms " )
                , ( outline3 35 145, "outline 35ms 145ms " )
                , ( outlineColor3 35 145, "outline-color 35ms 145ms " )
                , ( outlineOffset3 35 145, "outline-offset 35ms 145ms " )
                , ( outlineWidth3 35 145, "outline-width 35ms 145ms " )
                , ( padding3 35 145, "padding 35ms 145ms " )
                , ( paddingBottom3 35 145, "padding-bottom 35ms 145ms " )
                , ( paddingLeft3 35 145, "padding-left 35ms 145ms " )
                , ( paddingRight3 35 145, "padding-right 35ms 145ms " )
                , ( paddingTop3 35 145, "padding-top 35ms 145ms " )
                , ( right3 35 145, "right 35ms 145ms " )
                , ( tabSize3 35 145, "tab-size 35ms 145ms " )
                , ( textIndent3 35 145, "text-indent 35ms 145ms " )
                , ( textShadow3 35 145, "text-shadow 35ms 145ms " )
                , ( top3 35 145, "top 35ms 145ms " )
                , ( transform3 35 145, "transform 35ms 145ms " )
                , ( transformOrigin3 35 145, "transform-origin 35ms 145ms " )
                , ( verticalAlign3 35 145, "vertical-align 35ms 145ms " )
                , ( visibility3 35 145, "visibility 35ms 145ms " )
                , ( width3 35 145, "width 35ms 145ms " )
                , ( wordSpacing3 35 145, "word-spacing 35ms 145ms " )
                , ( zIndex3 35 145, "z-index 35ms 145ms " )
                ]
            )
        )


testTransition : List ( Transition, String ) -> List Test
testTransition transitions =
    List.map expectTransitionWorks transitions


expectTransitionWorks : ( Transition, String ) -> Test
expectTransitionWorks ( trans, property ) =
    test
        ("emit as expected " ++ property)
    <|
        \() ->
            prettyPrint (stylesheet [ p [ transition [ trans ] ] ])
                |> Expect.equal
                    ("p {\n    transition:"
                        ++ property
                        ++ ";\n}"
                    )
