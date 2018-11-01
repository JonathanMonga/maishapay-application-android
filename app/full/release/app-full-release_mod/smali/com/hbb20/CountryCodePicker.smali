.class public Lcom/hbb20/CountryCodePicker;
.super Landroid/widget/RelativeLayout;
.source "CountryCodePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hbb20/CountryCodePicker$DialogEventsListener;,
        Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;,
        Lcom/hbb20/CountryCodePicker$FailureListener;,
        Lcom/hbb20/CountryCodePicker$OnCountryChangeListener;,
        Lcom/hbb20/CountryCodePicker$TextGravity;,
        Lcom/hbb20/CountryCodePicker$AutoDetectionPref;,
        Lcom/hbb20/CountryCodePicker$PhoneNumberType;,
        Lcom/hbb20/CountryCodePicker$Language;
    }
.end annotation


# static fields
.field private static ANDROID_NAME_SPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field static BUNDLE_SELECTED_CODE:Ljava/lang/String; = "selectedCode"

.field static final DEFAULT_UNSET:I = -0x63

.field static LIB_DEFAULT_COUNTRY_CODE:I = 0x5b

.field static TAG:Ljava/lang/String; = "CCP"

.field private static TEXT_GRAVITY_CENTER:I = 0x0

.field private static TEXT_GRAVITY_LEFT:I = -0x1

.field private static TEXT_GRAVITY_RIGHT:I = 0x1


# instance fields
.field CCP_PREF_FILE:Ljava/lang/String;

.field areaCodeCountryDetectorTextWatcher:Landroid/text/TextWatcher;

.field autoDetectCountryEnabled:Z

.field autoDetectLanguageEnabled:Z

.field borderFlagColor:I

.field ccpClickable:Z

.field ccpDialogInitialScrollToSelection:Z

.field ccpDialogShowFlag:Z

.field ccpDialogShowNameCode:Z

.field ccpDialogShowPhoneCode:Z

.field ccpDialogShowTitle:Z

.field ccpTextgGravity:I

.field codePicker:Lcom/hbb20/CountryCodePicker;

.field contentColor:I

.field context:Landroid/content/Context;

.field countryChangedDueToAreaCode:Z

.field countryCodeHolderClickListener:Landroid/view/View$OnClickListener;

.field countryDetectionBasedOnAreaAllowed:Z

.field countryPreference:Ljava/lang/String;

.field private currentCountryGroup:Lcom/hbb20/CCPCountryGroup;

.field currentTextGravity:Lcom/hbb20/CountryCodePicker$TextGravity;

.field private customClickListener:Landroid/view/View$OnClickListener;

.field customDefaultLanguage:Lcom/hbb20/CountryCodePicker$Language;

.field customMasterCountriesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation
.end field

.field customMasterCountriesParam:Ljava/lang/String;

.field defaultCCPCountry:Lcom/hbb20/CCPCountry;

.field defaultCountryCode:I

.field defaultCountryNameCode:Ljava/lang/String;

.field detectCountryWithAreaCode:Z

.field private dialogBackgroundColor:I

.field private dialogEventsListener:Lcom/hbb20/CountryCodePicker$DialogEventsListener;

.field dialogKeyboardAutoPopup:Z

.field private dialogSearchEditTextTintColor:I

.field private dialogTextColor:I

.field dialogTypeFace:Landroid/graphics/Typeface;

.field dialogTypeFaceStyle:I

.field editText_registeredCarrierNumber:Landroid/widget/EditText;

.field excludedCountriesParam:Ljava/lang/String;

.field private failureListener:Lcom/hbb20/CountryCodePicker$FailureListener;

.field fastScrollerBubbleColor:I

.field private fastScrollerBubbleTextAppearance:I

.field private fastScrollerHandleColor:I

.field formattingTextWatcher:Lcom/hbb20/InternationalPhoneTextWatcher;

.field hintExampleNumberEnabled:Z

.field hintExampleNumberType:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field holder:Landroid/widget/RelativeLayout;

.field holderView:Landroid/view/View;

.field imageViewArrow:Landroid/widget/ImageView;

.field imageViewFlag:Landroid/widget/ImageView;

.field languageToApply:Lcom/hbb20/CountryCodePicker$Language;

.field lastCheckedAreaCode:Ljava/lang/String;

.field lastCursorPosition:I

.field linearFlagBorder:Landroid/widget/LinearLayout;

.field linearFlagHolder:Landroid/widget/LinearLayout;

.field mInflater:Landroid/view/LayoutInflater;

.field numberAutoFormattingEnabled:Z

.field private onCountryChangeListener:Lcom/hbb20/CountryCodePicker$OnCountryChangeListener;

.field private phoneNumberValidityChangeListener:Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;

.field phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

.field preferredCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation
.end field

.field relativeClickConsumer:Landroid/widget/RelativeLayout;

.field rememberLastSelection:Z

.field reportedValidity:Z

.field searchAllowed:Z

.field selectedAutoDetectionPref:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field selectedCCPCountry:Lcom/hbb20/CCPCountry;

.field selectionMemoryTag:Ljava/lang/String;

.field showArrow:Z

.field showCloseIcon:Z

.field showFastScroller:Z

.field showFlag:Z

.field showFullName:Z

.field showNameCode:Z

.field showPhoneCode:Z

.field textView_selectedCountry:Landroid/widget/TextView;

.field validityTextWatcher:Landroid/text/TextWatcher;

.field xmlWidth:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 140
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "CCP_PREF_FILE"

    .line 48
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->CCP_PREF_FILE:Ljava/lang/String;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showNameCode:Z

    const/4 v1, 0x1

    .line 70
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->showPhoneCode:Z

    .line 71
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowPhoneCode:Z

    .line 72
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->showFlag:Z

    .line 73
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showFullName:Z

    .line 75
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowTitle:Z

    .line 76
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowFlag:Z

    .line 77
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->searchAllowed:Z

    .line 78
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->showArrow:Z

    .line 79
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showCloseIcon:Z

    .line 80
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->rememberLastSelection:Z

    .line 81
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->detectCountryWithAreaCode:Z

    .line 82
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowNameCode:Z

    .line 83
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogInitialScrollToSelection:Z

    .line 84
    sget-object v2, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->MOBILE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->hintExampleNumberType:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v2, "ccp_last_selection"

    .line 85
    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->selectionMemoryTag:Ljava/lang/String;

    .line 91
    sget v2, Lcom/hbb20/CountryCodePicker;->TEXT_GRAVITY_CENTER:I

    iput v2, p0, Lcom/hbb20/CountryCodePicker;->ccpTextgGravity:I

    .line 94
    iput v0, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerBubbleColor:I

    .line 98
    sget-object v2, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->customDefaultLanguage:Lcom/hbb20/CountryCodePicker$Language;

    .line 99
    sget-object v2, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    .line 101
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->dialogKeyboardAutoPopup:Z

    .line 102
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ccpClickable:Z

    const-string v1, "notSet"

    .line 104
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->xmlWidth:Ljava/lang/String;

    const/4 v1, 0x0

    .line 110
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->lastCheckedAreaCode:Ljava/lang/String;

    .line 111
    iput v0, p0, Lcom/hbb20/CountryCodePicker;->lastCursorPosition:I

    .line 112
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->countryChangedDueToAreaCode:Z

    .line 122
    new-instance v0, Lcom/hbb20/CountryCodePicker$1;

    invoke-direct {v0, p0}, Lcom/hbb20/CountryCodePicker$1;-><init>(Lcom/hbb20/CountryCodePicker;)V

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->countryCodeHolderClickListener:Landroid/view/View$OnClickListener;

    .line 141
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    .line 142
    invoke-direct {p0, v1}, Lcom/hbb20/CountryCodePicker;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 146
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "CCP_PREF_FILE"

    .line 48
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->CCP_PREF_FILE:Ljava/lang/String;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showNameCode:Z

    const/4 v1, 0x1

    .line 70
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->showPhoneCode:Z

    .line 71
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowPhoneCode:Z

    .line 72
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->showFlag:Z

    .line 73
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showFullName:Z

    .line 75
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowTitle:Z

    .line 76
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowFlag:Z

    .line 77
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->searchAllowed:Z

    .line 78
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->showArrow:Z

    .line 79
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showCloseIcon:Z

    .line 80
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->rememberLastSelection:Z

    .line 81
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->detectCountryWithAreaCode:Z

    .line 82
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowNameCode:Z

    .line 83
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogInitialScrollToSelection:Z

    .line 84
    sget-object v2, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->MOBILE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->hintExampleNumberType:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v2, "ccp_last_selection"

    .line 85
    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->selectionMemoryTag:Ljava/lang/String;

    .line 91
    sget v2, Lcom/hbb20/CountryCodePicker;->TEXT_GRAVITY_CENTER:I

    iput v2, p0, Lcom/hbb20/CountryCodePicker;->ccpTextgGravity:I

    .line 94
    iput v0, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerBubbleColor:I

    .line 98
    sget-object v2, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->customDefaultLanguage:Lcom/hbb20/CountryCodePicker$Language;

    .line 99
    sget-object v2, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    .line 101
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->dialogKeyboardAutoPopup:Z

    .line 102
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ccpClickable:Z

    const-string v1, "notSet"

    .line 104
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->xmlWidth:Ljava/lang/String;

    const/4 v1, 0x0

    .line 110
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->lastCheckedAreaCode:Ljava/lang/String;

    .line 111
    iput v0, p0, Lcom/hbb20/CountryCodePicker;->lastCursorPosition:I

    .line 112
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->countryChangedDueToAreaCode:Z

    .line 122
    new-instance v0, Lcom/hbb20/CountryCodePicker$1;

    invoke-direct {v0, p0}, Lcom/hbb20/CountryCodePicker$1;-><init>(Lcom/hbb20/CountryCodePicker;)V

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->countryCodeHolderClickListener:Landroid/view/View$OnClickListener;

    .line 147
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    .line 148
    invoke-direct {p0, p2}, Lcom/hbb20/CountryCodePicker;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "CCP_PREF_FILE"

    .line 48
    iput-object p3, p0, Lcom/hbb20/CountryCodePicker;->CCP_PREF_FILE:Ljava/lang/String;

    const/4 p3, 0x0

    .line 69
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->showNameCode:Z

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showPhoneCode:Z

    .line 71
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowPhoneCode:Z

    .line 72
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showFlag:Z

    .line 73
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->showFullName:Z

    .line 75
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowTitle:Z

    .line 76
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowFlag:Z

    .line 77
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->searchAllowed:Z

    .line 78
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showArrow:Z

    .line 79
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->showCloseIcon:Z

    .line 80
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->rememberLastSelection:Z

    .line 81
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->detectCountryWithAreaCode:Z

    .line 82
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowNameCode:Z

    .line 83
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogInitialScrollToSelection:Z

    .line 84
    sget-object v1, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->MOBILE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->hintExampleNumberType:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v1, "ccp_last_selection"

    .line 85
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->selectionMemoryTag:Ljava/lang/String;

    .line 91
    sget v1, Lcom/hbb20/CountryCodePicker;->TEXT_GRAVITY_CENTER:I

    iput v1, p0, Lcom/hbb20/CountryCodePicker;->ccpTextgGravity:I

    .line 94
    iput p3, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerBubbleColor:I

    .line 98
    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->customDefaultLanguage:Lcom/hbb20/CountryCodePicker$Language;

    .line 99
    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    .line 101
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->dialogKeyboardAutoPopup:Z

    .line 102
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpClickable:Z

    const-string v0, "notSet"

    .line 104
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->xmlWidth:Ljava/lang/String;

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->lastCheckedAreaCode:Ljava/lang/String;

    .line 111
    iput p3, p0, Lcom/hbb20/CountryCodePicker;->lastCursorPosition:I

    .line 112
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->countryChangedDueToAreaCode:Z

    .line 122
    new-instance p3, Lcom/hbb20/CountryCodePicker$1;

    invoke-direct {p3, p0}, Lcom/hbb20/CountryCodePicker$1;-><init>(Lcom/hbb20/CountryCodePicker;)V

    iput-object p3, p0, Lcom/hbb20/CountryCodePicker;->countryCodeHolderClickListener:Landroid/view/View$OnClickListener;

    .line 153
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    .line 154
    invoke-direct {p0, p2}, Lcom/hbb20/CountryCodePicker;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/hbb20/CountryCodePicker;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/hbb20/CountryCodePicker;->customClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CCPCountry;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lcom/hbb20/CCPCountry;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CCPCountryGroup;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/hbb20/CountryCodePicker;->currentCountryGroup:Lcom/hbb20/CCPCountryGroup;

    return-object p0
.end method

.method static synthetic access$300(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/hbb20/CountryCodePicker;->phoneNumberValidityChangeListener:Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;

    return-object p0
.end method

.method private applyCustomProperty(Landroid/util/AttributeSet;)V
    .locals 6

    .line 200
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/hbb20/R$styleable;->CountryCodePicker:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 204
    :try_start_0
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_showNameCode:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showNameCode:Z

    .line 207
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_autoFormatNumber:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->numberAutoFormattingEnabled:Z

    .line 210
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_showPhoneCode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showPhoneCode:Z

    .line 213
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_showPhoneCode:I

    iget-boolean v3, p0, Lcom/hbb20/CountryCodePicker;->showPhoneCode:Z

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowPhoneCode:Z

    .line 216
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_showNameCode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowNameCode:Z

    .line 219
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_showTitle:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowTitle:Z

    .line 222
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_showFlag:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowFlag:Z

    .line 225
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_initialScrollToSelection:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogInitialScrollToSelection:Z

    .line 228
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_showFullName:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showFullName:Z

    .line 231
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_showFastScroller:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showFastScroller:Z

    .line 234
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_fastScroller_bubbleColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerBubbleColor:I

    .line 237
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_fastScroller_handleColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerHandleColor:I

    .line 240
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_fastScroller_bubbleTextAppearance:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerBubbleTextAppearance:I

    .line 243
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_autoDetectLanguage:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->autoDetectLanguageEnabled:Z

    .line 246
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_areaCodeDetectedCountry:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->detectCountryWithAreaCode:Z

    .line 249
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_rememberLastSelection:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->rememberLastSelection:Z

    .line 252
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_hintExampleNumber:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->hintExampleNumberEnabled:Z

    .line 255
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_hintExampleNumberType:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 256
    invoke-static {}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->values()[Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    move-result-object v3

    aget-object v0, v3, v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->hintExampleNumberType:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 259
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_selectionMemoryTag:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->selectionMemoryTag:Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->selectionMemoryTag:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "CCP_last_selection"

    .line 261
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->selectionMemoryTag:Ljava/lang/String;

    .line 265
    :cond_0
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_countryAutoDetectionPref:I

    const/16 v3, 0x7b

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 266
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->getPrefForValue(Ljava/lang/String;)Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->selectedAutoDetectionPref:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 269
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_autoDetectCountry:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->autoDetectCountryEnabled:Z

    .line 272
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_showArrow:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showArrow:Z

    .line 273
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->refreshArrowViewVisibility()V

    .line 276
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_showCloseIcon:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showCloseIcon:Z

    .line 279
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_showFlag:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->showFlag(Z)V

    .line 282
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_keyboardAutoPopup:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDialogKeyboardAutoPopup(Z)V

    .line 286
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_defaultLanguage:I

    sget-object v3, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    invoke-virtual {v3}, Lcom/hbb20/CountryCodePicker$Language;->ordinal()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 287
    invoke-direct {p0, v0}, Lcom/hbb20/CountryCodePicker;->getLanguageEnum(I)Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->customDefaultLanguage:Lcom/hbb20/CountryCodePicker$Language;

    .line 288
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateLanguageToApply()V

    .line 291
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_customMasterCountries:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesParam:Ljava/lang/String;

    .line 292
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_excludedCountries:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->excludedCountriesParam:Ljava/lang/String;

    .line 293
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->refreshCustomMasterList()V

    .line 298
    :cond_1
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_countryPreference:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->countryPreference:Ljava/lang/String;

    .line 300
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 301
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->refreshPreferredCountries()V

    .line 305
    :cond_2
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_textGravity:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_textGravity:I

    sget v3, Lcom/hbb20/CountryCodePicker;->TEXT_GRAVITY_RIGHT:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/hbb20/CountryCodePicker;->ccpTextgGravity:I

    .line 308
    :cond_3
    iget v0, p0, Lcom/hbb20/CountryCodePicker;->ccpTextgGravity:I

    invoke-direct {p0, v0}, Lcom/hbb20/CountryCodePicker;->applyTextGravity(I)V

    .line 312
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_defaultNameCode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->defaultCountryNameCode:Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->defaultCountryNameCode:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->defaultCountryNameCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 315
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 316
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v3

    iget-object v4, p0, Lcom/hbb20/CountryCodePicker;->defaultCountryNameCode:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 318
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v3

    iget-object v4, p0, Lcom/hbb20/CountryCodePicker;->defaultCountryNameCode:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lcom/hbb20/CCPCountry;)V

    .line 319
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    goto :goto_0

    .line 322
    :cond_4
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->defaultCountryNameCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromEnglishList(Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 324
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->defaultCountryNameCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromEnglishList(Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lcom/hbb20/CCPCountry;)V

    .line 325
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    if-nez v0, :cond_7

    const-string v0, "IN"

    .line 331
    invoke-static {v0}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromEnglishList(Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lcom/hbb20/CCPCountry;)V

    .line 332
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v2

    .line 338
    :cond_7
    :goto_2
    sget v3, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_defaultPhoneCode:I

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    if-nez v0, :cond_b

    if-eq v3, v4, :cond_b

    .line 340
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_9

    if-eq v3, v4, :cond_8

    .line 342
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v4

    iget-object v5, p0, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    invoke-static {v0, v4, v5, v3}, Lcom/hbb20/CCPCountry;->getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;I)Lcom/hbb20/CCPCountry;

    move-result-object v0

    if-nez v0, :cond_8

    .line 343
    sget v3, Lcom/hbb20/CountryCodePicker;->LIB_DEFAULT_COUNTRY_CODE:I

    .line 345
    :cond_8
    invoke-virtual {p0, v3}, Lcom/hbb20/CountryCodePicker;->setDefaultCountryUsingPhoneCode(I)V

    .line 346
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    goto :goto_3

    .line 349
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hbb20/CCPCountry;->getCountryForCodeFromEnglishList(Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v0

    if-nez v0, :cond_a

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/hbb20/CountryCodePicker;->LIB_DEFAULT_COUNTRY_CODE:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hbb20/CCPCountry;->getCountryForCodeFromEnglishList(Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v0

    .line 353
    :cond_a
    invoke-direct {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lcom/hbb20/CCPCountry;)V

    .line 354
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 359
    :cond_b
    :goto_3
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountry()Lcom/hbb20/CCPCountry;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, "IN"

    .line 360
    invoke-static {v0}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromEnglishList(Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lcom/hbb20/CCPCountry;)V

    .line 361
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lcom/hbb20/CCPCountry;

    move-result-object v0

    if-nez v0, :cond_c

    .line 362
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 368
    :cond_c
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isAutoDetectCountryEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 369
    invoke-virtual {p0, v1}, Lcom/hbb20/CountryCodePicker;->setAutoDetectedCountry(Z)V

    .line 373
    :cond_d
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->rememberLastSelection:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_e

    .line 374
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->loadLastSelectedCountryInCCP()V

    .line 379
    :cond_e
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 380
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_contentColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    goto :goto_4

    .line 382
    :cond_f
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_contentColor:I

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/hbb20/R$color;->defaultContentColor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    :goto_4
    if-eqz v0, :cond_10

    .line 385
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setContentColor(I)V

    .line 390
    :cond_10
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 391
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_flagBorderColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    goto :goto_5

    .line 393
    :cond_11
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_flagBorderColor:I

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/hbb20/R$color;->defaultBorderFlagColor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    :goto_5
    if-eqz v0, :cond_12

    .line 396
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setFlagBorderColor(I)V

    .line 400
    :cond_12
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_backgroundColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDialogBackgroundColor(I)V

    .line 401
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_textColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDialogTextColor(I)V

    .line 402
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_searchEditTextTint:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDialogSearchEditTextTintColor(I)V

    .line 405
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_textSize:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-lez v0, :cond_13

    .line 407
    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    int-to-float v4, v0

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 408
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setFlagSize(I)V

    .line 409
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setArrowSize(I)V

    .line 413
    :cond_13
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_arrowSize:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-lez v0, :cond_14

    .line 415
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setArrowSize(I)V

    .line 418
    :cond_14
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_allowSearch:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->searchAllowed:Z

    .line 419
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_clickable:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setCcpClickable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 422
    :try_start_1
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 423
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    :goto_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 427
    sget-object p1, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end:xmlWidth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->xmlWidth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 425
    :goto_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private applyTextGravity(I)V
    .locals 1

    .line 622
    sget-object v0, Lcom/hbb20/CountryCodePicker$TextGravity;->LEFT:Lcom/hbb20/CountryCodePicker$TextGravity;

    iget v0, v0, Lcom/hbb20/CountryCodePicker$TextGravity;->enumIndex:I

    if-ne p1, v0, :cond_0

    .line 623
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 624
    :cond_0
    sget-object v0, Lcom/hbb20/CountryCodePicker$TextGravity;->CENTER:Lcom/hbb20/CountryCodePicker$TextGravity;

    iget v0, v0, Lcom/hbb20/CountryCodePicker$TextGravity;->enumIndex:I

    if-ne p1, v0, :cond_1

    .line 625
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 627
    :cond_1
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    return-void
.end method

.method private detectCarrierNumber(Ljava/lang/String;Lcom/hbb20/CCPCountry;)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 1376
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1379
    :cond_0
    invoke-virtual {p2}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1383
    :cond_1
    invoke-virtual {p2}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private getCCPLanguageFromLocale()Lcom/hbb20/CountryCodePicker$Language;
    .locals 7

    .line 671
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 672
    sget-object v1, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCCPLanguageFromLocale: current locale language"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-static {}, Lcom/hbb20/CountryCodePicker$Language;->values()[Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v4, v1, v2

    .line 674
    invoke-virtual {v4}, Lcom/hbb20/CountryCodePicker$Language;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 676
    invoke-virtual {v4}, Lcom/hbb20/CountryCodePicker$Language;->getCountry()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 677
    invoke-virtual {v4}, Lcom/hbb20/CountryCodePicker$Language;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 680
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_3

    .line 681
    invoke-virtual {v4}, Lcom/hbb20/CountryCodePicker$Language;->getScript()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 682
    invoke-virtual {v4}, Lcom/hbb20/CountryCodePicker$Language;->getScript()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    return-object v4

    :cond_2
    :goto_1
    return-object v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCountryCodeHolderClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 1119
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->countryCodeHolderClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private getCountryDetectorTextWatcher()Landroid/text/TextWatcher;
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->areaCodeCountryDetectorTextWatcher:Landroid/text/TextWatcher;

    if-nez v0, :cond_0

    .line 928
    new-instance v0, Lcom/hbb20/CountryCodePicker$2;

    invoke-direct {v0, p0}, Lcom/hbb20/CountryCodePicker$2;-><init>(Lcom/hbb20/CountryCodePicker;)V

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->areaCodeCountryDetectorTextWatcher:Landroid/text/TextWatcher;

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->areaCodeCountryDetectorTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private getDefaultCountry()Lcom/hbb20/CCPCountry;
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    return-object v0
.end method

.method private getHolderView()Landroid/view/View;
    .locals 1

    .line 986
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->holderView:Landroid/view/View;

    return-object v0
.end method

.method private getLanguageEnum(I)Lcom/hbb20/CountryCodePicker$Language;
    .locals 1

    .line 1395
    invoke-static {}, Lcom/hbb20/CountryCodePicker$Language;->values()[Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1396
    invoke-static {}, Lcom/hbb20/CountryCodePicker$Language;->values()[Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1

    .line 1398
    :cond_0
    sget-object p1, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    return-object p1
.end method

.method private getPhoneUtil()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;
    .locals 1

    .line 1983
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    if-nez v0, :cond_0

    .line 1984
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->createInstance(Landroid/content/Context;)Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    .line 1986
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    return-object v0
.end method

.method private getSelectedCountry()Lcom/hbb20/CCPCountry;
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->selectedCCPCountry:Lcom/hbb20/CCPCountry;

    if-nez v0, :cond_0

    .line 718
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountry()Lcom/hbb20/CCPCountry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->selectedCCPCountry:Lcom/hbb20/CCPCountry;

    return-object v0
.end method

.method private getSelectedHintNumberType()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;
    .locals 2

    .line 839
    sget-object v0, Lcom/hbb20/CountryCodePicker$4;->$SwitchMap$com$hbb20$CountryCodePicker$PhoneNumberType:[I

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->hintExampleNumberType:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    invoke-virtual {v1}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 866
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 864
    :pswitch_0
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 861
    :pswitch_1
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 859
    :pswitch_2
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->UAN:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 857
    :pswitch_3
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->PAGER:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 855
    :pswitch_4
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 853
    :pswitch_5
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->VOIP:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 851
    :pswitch_6
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 849
    :pswitch_7
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 847
    :pswitch_8
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 845
    :pswitch_9
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 843
    :pswitch_a
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 841
    :pswitch_b
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getmInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 1115
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->mInflater:Landroid/view/LayoutInflater;

    .line 176
    sget-object v0, Lcom/hbb20/CountryCodePicker;->ANDROID_NAME_SPACE:Ljava/lang/String;

    const-string v1, "layout_width"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->xmlWidth:Ljava/lang/String;

    .line 177
    sget-object v0, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init:xmlWidth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->xmlWidth:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->removeAllViewsInLayout()V

    .line 180
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->xmlWidth:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->xmlWidth:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->xmlWidth:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->xmlWidth:Ljava/lang/String;

    const-string v2, "fill_parent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->xmlWidth:Ljava/lang/String;

    const-string v2, "match_parent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/hbb20/R$layout;->layout_full_width_code_picker:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->holderView:Landroid/view/View;

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/hbb20/R$layout;->layout_code_picker:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->holderView:Landroid/view/View;

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->holderView:Landroid/view/View;

    sget v1, Lcom/hbb20/R$id;->textView_selectedCountry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    .line 187
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->holderView:Landroid/view/View;

    sget v1, Lcom/hbb20/R$id;->countryCodeHolder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->holder:Landroid/widget/RelativeLayout;

    .line 188
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->holderView:Landroid/view/View;

    sget v1, Lcom/hbb20/R$id;->imageView_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->imageViewArrow:Landroid/widget/ImageView;

    .line 189
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->holderView:Landroid/view/View;

    sget v1, Lcom/hbb20/R$id;->image_flag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->imageViewFlag:Landroid/widget/ImageView;

    .line 190
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->holderView:Landroid/view/View;

    sget v1, Lcom/hbb20/R$id;->linear_flag_holder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->linearFlagHolder:Landroid/widget/LinearLayout;

    .line 191
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->holderView:Landroid/view/View;

    sget v1, Lcom/hbb20/R$id;->linear_flag_border:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->linearFlagBorder:Landroid/widget/LinearLayout;

    .line 192
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->holderView:Landroid/view/View;

    sget v1, Lcom/hbb20/R$id;->rlClickConsumer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->relativeClickConsumer:Landroid/widget/RelativeLayout;

    .line 193
    iput-object p0, p0, Lcom/hbb20/CountryCodePicker;->codePicker:Lcom/hbb20/CountryCodePicker;

    .line 194
    invoke-direct {p0, p1}, Lcom/hbb20/CountryCodePicker;->applyCustomProperty(Landroid/util/AttributeSet;)V

    .line 195
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->relativeClickConsumer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->countryCodeHolderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isAlreadyInList(Lcom/hbb20/CCPCountry;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hbb20/CCPCountry;",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1359
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hbb20/CCPCountry;

    .line 1360
    invoke-virtual {v0}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isNumberAutoFormattingEnabled()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->numberAutoFormattingEnabled:Z

    return v0
.end method

.method private loadLastSelectedCountryInCCP()V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->CCP_PREF_FILE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 449
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->selectionMemoryTag:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setCountryForNameCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private refreshArrowViewVisibility()V
    .locals 2

    .line 431
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showArrow:Z

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->imageViewArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->imageViewArrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setCustomDefaultLanguage(Lcom/hbb20/CountryCodePicker$Language;)V
    .locals 2

    .line 980
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->customDefaultLanguage:Lcom/hbb20/CountryCodePicker$Language;

    .line 981
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateLanguageToApply()V

    .line 982
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->selectedCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {v1}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    return-void
.end method

.method private setDefaultCountry(Lcom/hbb20/CCPCountry;)V
    .locals 0

    .line 696
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    return-void
.end method

.method private setHolder(Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 998
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->holder:Landroid/widget/RelativeLayout;

    return-void
.end method

.method private setHolderView(Landroid/view/View;)V
    .locals 0

    .line 990
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->holderView:Landroid/view/View;

    return-void
.end method

.method private updateCountryGroup()V
    .locals 1

    .line 806
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCodeAsInt()I

    move-result v0

    invoke-static {v0}, Lcom/hbb20/CCPCountryGroup;->getCountryGroupForPhoneCode(I)Lcom/hbb20/CCPCountryGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->currentCountryGroup:Lcom/hbb20/CCPCountryGroup;

    return-void
.end method

.method private updateFormattingTextWatcher()V
    .locals 5

    .line 882
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->selectedCCPCountry:Lcom/hbb20/CCPCountry;

    if-eqz v0, :cond_4

    .line 883
    sget-object v0, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFormattingTextWatcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->selectionMemoryTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 885
    invoke-static {v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 887
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->formattingTextWatcher:Lcom/hbb20/InternationalPhoneTextWatcher;

    if-eqz v1, :cond_0

    .line 888
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->formattingTextWatcher:Lcom/hbb20/InternationalPhoneTextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 891
    :cond_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->areaCodeCountryDetectorTextWatcher:Landroid/text/TextWatcher;

    if-eqz v1, :cond_1

    .line 892
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->areaCodeCountryDetectorTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 895
    :cond_1
    iget-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->numberAutoFormattingEnabled:Z

    if-eqz v1, :cond_2

    .line 896
    new-instance v1, Lcom/hbb20/InternationalPhoneTextWatcher;

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryNameCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCodeAsInt()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/hbb20/InternationalPhoneTextWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->formattingTextWatcher:Lcom/hbb20/InternationalPhoneTextWatcher;

    .line 897
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->formattingTextWatcher:Lcom/hbb20/InternationalPhoneTextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 901
    :cond_2
    iget-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->detectCountryWithAreaCode:Z

    if-eqz v1, :cond_3

    .line 902
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getCountryDetectorTextWatcher()Landroid/text/TextWatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->areaCodeCountryDetectorTextWatcher:Landroid/text/TextWatcher;

    .line 903
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->areaCodeCountryDetectorTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 907
    :cond_3
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 908
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 909
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 911
    :cond_4
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    if-nez v0, :cond_5

    .line 912
    sget-object v0, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFormattingTextWatcher: EditText not registered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->selectionMemoryTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 914
    :cond_5
    sget-object v0, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFormattingTextWatcher: selected country is null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->selectionMemoryTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateHint()V
    .locals 4

    .line 813
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->hintExampleNumberEnabled:Z

    if-eqz v0, :cond_2

    const-string v0, ""

    .line 815
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getPhoneUtil()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryNameCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedHintNumberType()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getExampleNumberForType(Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;)Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 818
    sget-object v1, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCodeWithPlus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryNameCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 822
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCodeWithPlus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 824
    :goto_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCodeWithPlus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 825
    sget-object v1, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHint: after format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->selectionMemoryTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 827
    :cond_1
    sget-object v1, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHint: No example number found for this country ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryNameCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") or this type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->hintExampleNumberType:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    invoke-virtual {v3}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :goto_1
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private updateLanguageToApply()V
    .locals 3

    .line 641
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->customDefaultLanguage:Lcom/hbb20/CountryCodePicker$Language;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->customDefaultLanguage:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    goto :goto_0

    .line 645
    :cond_0
    sget-object v0, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    goto :goto_0

    .line 648
    :cond_1
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isAutoDetectLanguageEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 649
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getCCPLanguageFromLocale()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    if-nez v0, :cond_3

    .line 651
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getCustomDefaultLanguage()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 652
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getCustomDefaultLanguage()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    goto :goto_0

    .line 654
    :cond_2
    sget-object v0, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    goto :goto_0

    .line 657
    :cond_3
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    goto :goto_0

    .line 660
    :cond_4
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getCustomDefaultLanguage()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 661
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->customDefaultLanguage:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    goto :goto_0

    .line 663
    :cond_5
    sget-object v0, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    .line 667
    :goto_0
    sget-object v0, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLanguageToApply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateValidityTextWatcher()V
    .locals 2

    .line 1076
    :try_start_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->validityTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1078
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1082
    :goto_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isValidFullNumber()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->reportedValidity:Z

    .line 1083
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->phoneNumberValidityChangeListener:Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->phoneNumberValidityChangeListener:Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;

    iget-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->reportedValidity:Z

    invoke-interface {v0, v1}, Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;->onValidityChanged(Z)V

    .line 1087
    :cond_0
    new-instance v0, Lcom/hbb20/CountryCodePicker$3;

    invoke-direct {v0, p0}, Lcom/hbb20/CountryCodePicker$3;-><init>(Lcom/hbb20/CountryCodePicker;)V

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->validityTextWatcher:Landroid/text/TextWatcher;

    .line 1111
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->validityTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public changeDefaultLanguage(Lcom/hbb20/CountryCodePicker$Language;)V
    .locals 0

    .line 1819
    invoke-direct {p0, p1}, Lcom/hbb20/CountryCodePicker;->setCustomDefaultLanguage(Lcom/hbb20/CountryCodePicker$Language;)V

    return-void
.end method

.method public detectLocaleCountry(Z)Z
    .locals 4

    const/4 v0, 0x0

    .line 2103
    :try_start_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2104
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2110
    :cond_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 2106
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->resetToDefaultCountry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception v1

    .line 2113
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p1, :cond_3

    .line 2115
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->resetToDefaultCountry()V

    :cond_3
    return v0
.end method

.method public detectNetworkCountry(Z)Z
    .locals 4

    const/4 v0, 0x0

    .line 2075
    :try_start_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2076
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2077
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2083
    :cond_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 2079
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->resetToDefaultCountry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception v1

    .line 2086
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p1, :cond_3

    .line 2088
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->resetToDefaultCountry()V

    :cond_3
    return v0
.end method

.method public detectSIMCountry(Z)Z
    .locals 4

    const/4 v0, 0x0

    .line 2047
    :try_start_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2048
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2049
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2055
    :cond_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 2051
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->resetToDefaultCountry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception v1

    .line 2058
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p1, :cond_3

    .line 2060
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->resetToDefaultCountry()V

    :cond_3
    return v0
.end method

.method public enableDialogInitialScrollToSelection(Z)V
    .locals 0

    .line 2166
    iget-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogInitialScrollToSelection:Z

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogInitialScrollToSelection:Z

    return-void
.end method

.method public getCcpDialogShowFlag()Z
    .locals 1

    .line 526
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowFlag:Z

    return v0
.end method

.method public getCcpDialogShowNameCode()Z
    .locals 1

    .line 494
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowNameCode:Z

    return v0
.end method

.method public getCcpDialogShowTitle()Z
    .locals 1

    .line 510
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowTitle:Z

    return v0
.end method

.method public getContentColor()I
    .locals 1

    .line 1728
    iget v0, p0, Lcom/hbb20/CountryCodePicker;->contentColor:I

    return v0
.end method

.method getCurrentTextGravity()Lcom/hbb20/CountryCodePicker$TextGravity;
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->currentTextGravity:Lcom/hbb20/CountryCodePicker$TextGravity;

    return-object v0
.end method

.method getCustomDefaultLanguage()Lcom/hbb20/CountryCodePicker$Language;
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->customDefaultLanguage:Lcom/hbb20/CountryCodePicker$Language;

    return-object v0
.end method

.method getCustomMasterCountriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation

    .line 1282
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    return-object v0
.end method

.method getCustomMasterCountriesParam()Ljava/lang/String;
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesParam:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultCountryCode()Ljava/lang/String;
    .locals 1

    .line 1468
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    iget-object v0, v0, Lcom/hbb20/CCPCountry;->phoneCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultCountryCodeAsInt()I
    .locals 1

    .line 1481
    :try_start_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1483
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDefaultCountryCodeWithPlus()Ljava/lang/String;
    .locals 2

    .line 1496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCountryName()Ljava/lang/String;
    .locals 1

    .line 1507
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountry()Lcom/hbb20/CCPCountry;

    move-result-object v0

    iget-object v0, v0, Lcom/hbb20/CCPCountry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultCountryNameCode()Ljava/lang/String;
    .locals 1

    .line 1518
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountry()Lcom/hbb20/CCPCountry;

    move-result-object v0

    iget-object v0, v0, Lcom/hbb20/CCPCountry;->nameCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDialogBackgroundColor()I
    .locals 1

    .line 1123
    iget v0, p0, Lcom/hbb20/CountryCodePicker;->dialogBackgroundColor:I

    return v0
.end method

.method protected getDialogEventsListener()Lcom/hbb20/CountryCodePicker$DialogEventsListener;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->dialogEventsListener:Lcom/hbb20/CountryCodePicker$DialogEventsListener;

    return-object v0
.end method

.method getDialogSearchEditTextTintColor()I
    .locals 1

    .line 1136
    iget v0, p0, Lcom/hbb20/CountryCodePicker;->dialogSearchEditTextTintColor:I

    return v0
.end method

.method getDialogTextColor()I
    .locals 1

    .line 1149
    iget v0, p0, Lcom/hbb20/CountryCodePicker;->dialogTextColor:I

    return v0
.end method

.method getDialogTitle()Ljava/lang/String;
    .locals 2

    .line 1403
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hbb20/CCPCountry;->getDialogTitle(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDialogTypeFace()Landroid/graphics/Typeface;
    .locals 1

    .line 1175
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->dialogTypeFace:Landroid/graphics/Typeface;

    return-object v0
.end method

.method getDialogTypeFaceStyle()I
    .locals 1

    .line 1167
    iget v0, p0, Lcom/hbb20/CountryCodePicker;->dialogTypeFaceStyle:I

    return v0
.end method

.method getEditText_registeredCarrierNumber()Landroid/widget/EditText;
    .locals 2

    .line 1050
    sget-object v0, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    const-string v1, "getEditText_registeredCarrierNumber"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method getFastScrollerBubbleColor()I
    .locals 1

    .line 595
    iget v0, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerBubbleColor:I

    return v0
.end method

.method getFastScrollerBubbleTextAppearance()I
    .locals 1

    .line 569
    iget v0, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerBubbleTextAppearance:I

    return v0
.end method

.method getFastScrollerHandleColor()I
    .locals 1

    .line 582
    iget v0, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerHandleColor:I

    return v0
.end method

.method public getFormattedFullNumber()Ljava/lang/String;
    .locals 3

    .line 1701
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 1702
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1703
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getFullNumberWithPlus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1705
    :cond_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getFullNumberWithPlus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1708
    :cond_1
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lcom/hbb20/CCPCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object v0

    .line 1709
    sget-object v1, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    const-string v2, "EditText for carrier number is not registered. Register it using registerCarrierNumberEditText() before getFullNumber() or setFullNumber()."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public getFullNumber()Ljava/lang/String;
    .locals 5

    .line 1655
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 1656
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 1657
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getPhoneUtil()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    move-result-object v1

    .line 1659
    :try_start_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCode()Ljava/lang/String;

    .line 1660
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryNameCode()Ljava/lang/String;

    move-result-object v2

    .line 1661
    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1662
    invoke-virtual {v1, v3, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 1663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lio/michaelrocks/libphonenumber/android/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1665
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/NumberParseException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getFullNumberWithPlus()Ljava/lang/String;
    .locals 2

    .line 1720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getFullNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHolder()Landroid/widget/RelativeLayout;
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->holder:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getImageViewFlag()Landroid/widget/ImageView;
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->imageViewFlag:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    if-nez v0, :cond_0

    .line 872
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateLanguageToApply()V

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    return-object v0
.end method

.method getNoResultFoundText()Ljava/lang/String;
    .locals 2

    .line 1414
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hbb20/CCPCountry;->getNoResultFoundAckMessage(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSearchHintText()Ljava/lang/String;
    .locals 2

    .line 1407
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hbb20/CCPCountry;->getSearchHintMessage(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedCountryCode()Ljava/lang/String;
    .locals 1

    .line 1537
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lcom/hbb20/CCPCountry;

    move-result-object v0

    iget-object v0, v0, Lcom/hbb20/CCPCountry;->phoneCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedCountryCodeAsInt()I
    .locals 1

    .line 1561
    :try_start_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1563
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSelectedCountryCodeWithPlus()Ljava/lang/String;
    .locals 2

    .line 1548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedCountryEnglishName()Ljava/lang/String;
    .locals 1

    .line 1587
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lcom/hbb20/CCPCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hbb20/CCPCountry;->getEnglishName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedCountryName()Ljava/lang/String;
    .locals 1

    .line 1576
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lcom/hbb20/CCPCountry;

    move-result-object v0

    iget-object v0, v0, Lcom/hbb20/CCPCountry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedCountryNameCode()Ljava/lang/String;
    .locals 1

    .line 1598
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lcom/hbb20/CCPCountry;

    move-result-object v0

    iget-object v0, v0, Lcom/hbb20/CCPCountry;->nameCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextView_selectedCountry()Landroid/widget/TextView;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    return-object v0
.end method

.method isAutoDetectCountryEnabled()Z
    .locals 1

    .line 1006
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->autoDetectCountryEnabled:Z

    return v0
.end method

.method isAutoDetectLanguageEnabled()Z
    .locals 1

    .line 1002
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->autoDetectLanguageEnabled:Z

    return v0
.end method

.method isCcpClickable()Z
    .locals 1

    .line 1329
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpClickable:Z

    return v0
.end method

.method isCcpDialogShowPhoneCode()Z
    .locals 1

    .line 478
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowPhoneCode:Z

    return v0
.end method

.method public isDialogInitialScrollToSelectionEnabled()Z
    .locals 1

    .line 2154
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogInitialScrollToSelection:Z

    return v0
.end method

.method isDialogKeyboardAutoPopup()Z
    .locals 1

    .line 1010
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->dialogKeyboardAutoPopup:Z

    return v0
.end method

.method public isSearchAllowed()Z
    .locals 1

    .line 1907
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->searchAllowed:Z

    return v0
.end method

.method protected isShowCloseIcon()Z
    .locals 1

    .line 1037
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showCloseIcon:Z

    return v0
.end method

.method isShowFastScroller()Z
    .locals 1

    .line 1024
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showFastScroller:Z

    return v0
.end method

.method isShowPhoneCode()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showPhoneCode:Z

    return v0
.end method

.method public isValidFullNumber()Z
    .locals 4

    const/4 v0, 0x0

    .line 1967
    :try_start_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1968
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getPhoneUtil()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->selectedCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {v3}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->selectedCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {v3}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 1969
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getPhoneUtil()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->isValidNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Z

    move-result v1

    return v1

    .line 1970
    :cond_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1971
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    const-string v2, "No editText for Carrier number found."

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lio/michaelrocks/libphonenumber/android/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_1
    return v0

    :catch_0
    return v0
.end method

.method public launchCountrySelectionDialog()V
    .locals 1

    const/4 v0, 0x0

    .line 1948
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->launchCountrySelectionDialog(Ljava/lang/String;)V

    return-void
.end method

.method public launchCountrySelectionDialog(Ljava/lang/String;)V
    .locals 1

    .line 1956
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-static {v0, p1}, Lcom/hbb20/CountryCodeDialog;->openCountryCodeDialog(Lcom/hbb20/CountryCodePicker;Ljava/lang/String;)V

    return-void
.end method

.method protected onUserTappedCountry(Lcom/hbb20/CCPCountry;)V
    .locals 2

    .line 2132
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->codePicker:Lcom/hbb20/CountryCodePicker;

    iget-boolean v0, v0, Lcom/hbb20/CountryCodePicker;->rememberLastSelection:Z

    if-eqz v0, :cond_0

    .line 2133
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hbb20/CountryCodePicker;->storeSelectedCountryNameCode(Ljava/lang/String;)V

    .line 2135
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    return-void
.end method

.method public overrideClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 2178
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->customClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method refreshCustomMasterList()V
    .locals 8

    .line 1230
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesParam:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesParam:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1254
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1255
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesParam:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 1256
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1258
    invoke-direct {p0, v5, v0}, Lcom/hbb20/CountryCodePicker;->isAlreadyInList(Lcom/hbb20/CCPCountry;Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1259
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1264
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 1265
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    goto :goto_3

    .line 1267
    :cond_3
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    goto :goto_3

    .line 1232
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->excludedCountriesParam:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->excludedCountriesParam:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 1233
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->excludedCountriesParam:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->excludedCountriesParam:Ljava/lang/String;

    .line 1234
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hbb20/CCPCountry;->getLibraryMasterCountryList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/util/List;

    move-result-object v0

    .line 1235
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1236
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hbb20/CCPCountry;

    .line 1238
    iget-object v4, p0, Lcom/hbb20/CountryCodePicker;->excludedCountriesParam:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1239
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1243
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1244
    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    goto :goto_3

    .line 1246
    :cond_7
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    goto :goto_3

    .line 1250
    :cond_8
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    .line 1271
    :goto_3
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1273
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/CCPCountry;

    .line 1274
    invoke-virtual {v1}, Lcom/hbb20/CCPCountry;->log()V

    goto :goto_4

    :cond_9
    return-void
.end method

.method refreshPreferredCountries()V
    .locals 9

    .line 1196
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->countryPreference:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->countryPreference:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1199
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1200
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->countryPreference:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 1201
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v8

    invoke-static {v6, v7, v8, v5}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromCustomMasterList(Landroid/content/Context;Ljava/util/List;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1203
    invoke-direct {p0, v5, v0}, Lcom/hbb20/CountryCodePicker;->isAlreadyInList(Lcom/hbb20/CCPCountry;Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1204
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1209
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 1210
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    goto :goto_2

    .line 1212
    :cond_3
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    goto :goto_2

    .line 1197
    :cond_4
    :goto_1
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    .line 1215
    :goto_2
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 1217
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/CCPCountry;

    .line 1218
    invoke-virtual {v1}, Lcom/hbb20/CCPCountry;->log()V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public registerCarrierNumberEditText(Landroid/widget/EditText;)V
    .locals 0

    .line 1646
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setEditText_registeredCarrierNumber(Landroid/widget/EditText;)V

    return-void
.end method

.method public resetToDefaultCountry()V
    .locals 3

    .line 1525
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountryNameCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    .line 1526
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    return-void
.end method

.method public setArrowSize(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 1772
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->imageViewArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1773
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1774
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1775
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->imageViewArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setAutoDetectedCountry(Z)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1999
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->selectedAutoDetectionPref:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    iget-object v3, v3, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->representation:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 2000
    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->selectedAutoDetectionPref:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    iget-object v3, v3, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->representation:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 2012
    :pswitch_0
    sget-object v2, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    const-string v3, "setAutoDetectedCountry: Setting using LOCALE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->detectLocaleCountry(Z)Z

    move-result v2

    .line 2014
    sget-object v3, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAutoDetectedCountry: Result of LOCALE country detection:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " current country:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryNameCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2007
    :pswitch_1
    sget-object v2, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    const-string v3, "setAutoDetectedCountry: Setting using NETWORK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->detectNetworkCountry(Z)Z

    move-result v2

    .line 2009
    sget-object v3, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAutoDetectedCountry: Result of network country detection:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " current country:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryNameCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2002
    :pswitch_2
    sget-object v2, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    const-string v3, "setAutoDetectedCountry: Setting using SIM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->detectSIMCountry(Z)Z

    move-result v2

    .line 2004
    sget-object v3, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAutoDetectedCountry: Result of sim country detection:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " current country:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryNameCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v2, :cond_0

    goto :goto_2

    .line 2020
    :cond_0
    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->failureListener:Lcom/hbb20/CountryCodePicker$FailureListener;

    if-eqz v3, :cond_1

    .line 2021
    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->failureListener:Lcom/hbb20/CountryCodePicker$FailureListener;

    invoke-interface {v3}, Lcom/hbb20/CountryCodePicker$FailureListener;->onCountryAutoDetectionFailed()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    :goto_2
    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    .line 2027
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->resetToDefaultCountry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 2030
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2031
    sget-object v1, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutoDetectCountry: Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 2033
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->resetToDefaultCountry()V

    :cond_3
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCcpClickable(Z)V
    .locals 1

    .line 1338
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->ccpClickable:Z

    if-nez p1, :cond_0

    .line 1340
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->relativeClickConsumer:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1341
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->relativeClickConsumer:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1342
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->relativeClickConsumer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto :goto_0

    .line 1344
    :cond_0
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->relativeClickConsumer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->countryCodeHolderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1345
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->relativeClickConsumer:Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1346
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->relativeClickConsumer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public setCcpDialogShowFlag(Z)V
    .locals 0

    .line 535
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowFlag:Z

    return-void
.end method

.method public setCcpDialogShowNameCode(Z)V
    .locals 0

    .line 503
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowNameCode:Z

    return-void
.end method

.method public setCcpDialogShowPhoneCode(Z)V
    .locals 0

    .line 487
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowPhoneCode:Z

    return-void
.end method

.method public setCcpDialogShowTitle(Z)V
    .locals 0

    .line 519
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowTitle:Z

    return-void
.end method

.method public setContentColor(I)V
    .locals 2

    .line 1737
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->contentColor:I

    .line 1738
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->contentColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1739
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->imageViewArrow:Landroid/widget/ImageView;

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->contentColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setCountryAutoDetectionPref(Lcom/hbb20/CountryCodePicker$AutoDetectionPref;)V
    .locals 0

    .line 2128
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->selectedAutoDetectionPref:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    return-void
.end method

.method public setCountryForNameCode(Ljava/lang/String;)V
    .locals 3

    .line 1628
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1630
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    if-nez p1, :cond_0

    .line 1631
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    iget v2, p0, Lcom/hbb20/CountryCodePicker;->defaultCountryCode:I

    invoke-static {p1, v0, v1, v2}, Lcom/hbb20/CCPCountry;->getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;I)Lcom/hbb20/CCPCountry;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    .line 1633
    :cond_0
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    goto :goto_0

    .line 1635
    :cond_1
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    :goto_0
    return-void
.end method

.method public setCountryForPhoneCode(I)V
    .locals 3

    .line 1609
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/hbb20/CCPCountry;->getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;I)Lcom/hbb20/CCPCountry;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1611
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    if-nez p1, :cond_0

    .line 1612
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    iget v2, p0, Lcom/hbb20/CountryCodePicker;->defaultCountryCode:I

    invoke-static {p1, v0, v1, v2}, Lcom/hbb20/CCPCountry;->getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;I)Lcom/hbb20/CCPCountry;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    .line 1614
    :cond_0
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    goto :goto_0

    .line 1616
    :cond_1
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    :goto_0
    return-void
.end method

.method public setCountryPreference(Ljava/lang/String;)V
    .locals 0

    .line 1808
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->countryPreference:Ljava/lang/String;

    return-void
.end method

.method public setCurrentTextGravity(Lcom/hbb20/CountryCodePicker$TextGravity;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->currentTextGravity:Lcom/hbb20/CountryCodePicker$TextGravity;

    .line 618
    iget p1, p1, Lcom/hbb20/CountryCodePicker$TextGravity;->enumIndex:I

    invoke-direct {p0, p1}, Lcom/hbb20/CountryCodePicker;->applyTextGravity(I)V

    return-void
.end method

.method public setCustomMasterCountries(Ljava/lang/String;)V
    .locals 0

    .line 1310
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesParam:Ljava/lang/String;

    return-void
.end method

.method setCustomMasterCountriesList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;)V"
        }
    .end annotation

    .line 1289
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    return-void
.end method

.method public setDefaultCountryUsingNameCode(Ljava/lang/String;)V
    .locals 2

    .line 1453
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1457
    :cond_0
    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->defaultCountryNameCode:Ljava/lang/String;

    .line 1458
    invoke-direct {p0, p1}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lcom/hbb20/CCPCountry;)V

    :goto_0
    return-void
.end method

.method public setDefaultCountryUsingPhoneCode(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1433
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/hbb20/CCPCountry;->getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;I)Lcom/hbb20/CCPCountry;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1437
    :cond_0
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->defaultCountryCode:I

    .line 1438
    invoke-direct {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lcom/hbb20/CCPCountry;)V

    :goto_0
    return-void
.end method

.method public setDetectCountryWithAreaCode(Z)V
    .locals 0

    .line 2139
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->detectCountryWithAreaCode:Z

    .line 2140
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateFormattingTextWatcher()V

    return-void
.end method

.method public setDialogBackgroundColor(I)V
    .locals 0

    .line 1132
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->dialogBackgroundColor:I

    return-void
.end method

.method public setDialogEventsListener(Lcom/hbb20/CountryCodePicker$DialogEventsListener;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->dialogEventsListener:Lcom/hbb20/CountryCodePicker$DialogEventsListener;

    return-void
.end method

.method public setDialogKeyboardAutoPopup(Z)V
    .locals 0

    .line 1020
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->dialogKeyboardAutoPopup:Z

    return-void
.end method

.method public setDialogSearchEditTextTintColor(I)V
    .locals 0

    .line 1145
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->dialogSearchEditTextTintColor:I

    return-void
.end method

.method public setDialogTextColor(I)V
    .locals 0

    .line 1163
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->dialogTextColor:I

    return-void
.end method

.method public setDialogTypeFace(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1185
    :try_start_0
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->dialogTypeFace:Landroid/graphics/Typeface;

    const/16 p1, -0x63

    .line 1186
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->dialogTypeFaceStyle:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1188
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setDialogTypeFace(Landroid/graphics/Typeface;I)V
    .locals 0

    .line 1844
    :try_start_0
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->dialogTypeFace:Landroid/graphics/Typeface;

    .line 1845
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->dialogTypeFace:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1849
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method setEditText_registeredCarrierNumber(Landroid/widget/EditText;)V
    .locals 2

    .line 1060
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    .line 1061
    sget-object p1, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEditText_registeredCarrierNumber: carrierEditTextAttached "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->selectionMemoryTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateValidityTextWatcher()V

    .line 1063
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateFormattingTextWatcher()V

    .line 1064
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateHint()V

    return-void
.end method

.method public setExcludedCountries(Ljava/lang/String;)V
    .locals 0

    .line 1321
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->excludedCountriesParam:Ljava/lang/String;

    .line 1322
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->refreshCustomMasterList()V

    return-void
.end method

.method public setFastScrollerBubbleColor(I)V
    .locals 0

    .line 604
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerBubbleColor:I

    return-void
.end method

.method public setFastScrollerBubbleTextAppearance(I)V
    .locals 0

    .line 578
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerBubbleTextAppearance:I

    return-void
.end method

.method public setFastScrollerHandleColor(I)V
    .locals 0

    .line 591
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerHandleColor:I

    return-void
.end method

.method public setFlagBorderColor(I)V
    .locals 1

    .line 1748
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->borderFlagColor:I

    .line 1749
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->linearFlagBorder:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->borderFlagColor:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setFlagSize(I)V
    .locals 1

    .line 1883
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->imageViewFlag:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1884
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->imageViewFlag:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public setFullNumber(Ljava/lang/String;)V
    .locals 3

    .line 1679
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/hbb20/CCPCountry;->getCountryForNumber(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1681
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountry()Lcom/hbb20/CCPCountry;

    move-result-object v0

    .line 1682
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 1683
    invoke-direct {p0, p1, v0}, Lcom/hbb20/CountryCodePicker;->detectCarrierNumber(Ljava/lang/String;Lcom/hbb20/CCPCountry;)Ljava/lang/String;

    move-result-object p1

    .line 1684
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1685
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1686
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateFormattingTextWatcher()V

    goto :goto_0

    .line 1688
    :cond_1
    sget-object p1, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    const-string v0, "EditText for carrier number is not registered. Register it using registerCarrierNumberEditText() before getFullNumber() or setFullNumber()."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setHintExampleNumberEnabled(Z)V
    .locals 0

    .line 2144
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->hintExampleNumberEnabled:Z

    .line 2145
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateHint()V

    return-void
.end method

.method public setHintExampleNumberType(Lcom/hbb20/CountryCodePicker$PhoneNumberType;)V
    .locals 0

    .line 2149
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->hintExampleNumberType:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2150
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateHint()V

    return-void
.end method

.method public setImageViewFlag(Landroid/widget/ImageView;)V
    .locals 0

    .line 713
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->imageViewFlag:Landroid/widget/ImageView;

    return-void
.end method

.method setLanguageToApply(Lcom/hbb20/CountryCodePicker$Language;)V
    .locals 0

    .line 878
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    return-void
.end method

.method public setNumberAutoFormattingEnabled(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->numberAutoFormattingEnabled:Z

    .line 168
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateFormattingTextWatcher()V

    :cond_0
    return-void
.end method

.method public setOnCountryChangeListener(Lcom/hbb20/CountryCodePicker$OnCountryChangeListener;)V
    .locals 0

    .line 1874
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->onCountryChangeListener:Lcom/hbb20/CountryCodePicker$OnCountryChangeListener;

    return-void
.end method

.method public setPhoneNumberValidityChangeListener(Lcom/hbb20/CountryCodePicker$FailureListener;)V
    .locals 0

    .line 1939
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->failureListener:Lcom/hbb20/CountryCodePicker$FailureListener;

    return-void
.end method

.method public setPhoneNumberValidityChangeListener(Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;)V
    .locals 1

    .line 1926
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->phoneNumberValidityChangeListener:Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;

    .line 1927
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1928
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isValidFullNumber()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->reportedValidity:Z

    .line 1929
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->reportedValidity:Z

    invoke-interface {p1, v0}, Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;->onValidityChanged(Z)V

    :cond_0
    return-void
.end method

.method public setSearchAllowed(Z)V
    .locals 0

    .line 1916
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->searchAllowed:Z

    return-void
.end method

.method setSelectedCountry(Lcom/hbb20/CCPCountry;)V
    .locals 4

    const/4 v0, 0x0

    .line 726
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->countryDetectionBasedOnAreaAllowed:Z

    const-string v1, ""

    .line 727
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->lastCheckedAreaCode:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 731
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    iget v3, p0, Lcom/hbb20/CountryCodePicker;->defaultCountryCode:I

    invoke-static {p1, v1, v2, v3}, Lcom/hbb20/CCPCountry;->getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;I)Lcom/hbb20/CCPCountry;

    move-result-object p1

    .line 734
    :cond_0
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->selectedCCPCountry:Lcom/hbb20/CCPCountry;

    const-string v1, ""

    .line 739
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->showFullName:Z

    if-eqz v2, :cond_1

    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 744
    :cond_1
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->showNameCode:Z

    if-eqz v2, :cond_3

    .line 745
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->showFullName:Z

    if-eqz v2, :cond_2

    .line 746
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 748
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 753
    :cond_3
    :goto_0
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->showPhoneCode:Z

    if-eqz v2, :cond_5

    .line 754
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 757
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 760
    :cond_5
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->showFlag:Z

    if-nez v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 765
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    :cond_6
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->onCountryChangeListener:Lcom/hbb20/CountryCodePicker$OnCountryChangeListener;

    if-eqz v1, :cond_7

    .line 769
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->onCountryChangeListener:Lcom/hbb20/CountryCodePicker$OnCountryChangeListener;

    invoke-interface {v1}, Lcom/hbb20/CountryCodePicker$OnCountryChangeListener;->onCountrySelected()V

    .line 772
    :cond_7
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->imageViewFlag:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getFlagID()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 775
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateFormattingTextWatcher()V

    .line 777
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateHint()V

    .line 780
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->phoneNumberValidityChangeListener:Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;

    if-eqz p1, :cond_8

    .line 781
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isValidFullNumber()Z

    move-result p1

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->reportedValidity:Z

    .line 782
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->phoneNumberValidityChangeListener:Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;

    iget-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->reportedValidity:Z

    invoke-interface {p1, v1}, Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;->onValidityChanged(Z)V

    :cond_8
    const/4 p1, 0x1

    .line 786
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->countryDetectionBasedOnAreaAllowed:Z

    .line 789
    iget-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->countryChangedDueToAreaCode:Z

    if-eqz p1, :cond_9

    .line 791
    :try_start_0
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    iget v1, p0, Lcom/hbb20/CountryCodePicker;->lastCursorPosition:I

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 792
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->countryChangedDueToAreaCode:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 794
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 799
    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateCountryGroup()V

    return-void
.end method

.method public setShowFastScroller(Z)V
    .locals 0

    .line 1033
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->showFastScroller:Z

    return-void
.end method

.method public setShowPhoneCode(Z)V
    .locals 0

    .line 548
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->showPhoneCode:Z

    .line 549
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->selectedCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 1759
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    const/4 v1, 0x0

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1760
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setArrowSize(I)V

    .line 1761
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setFlagSize(I)V

    :cond_0
    return-void
.end method

.method public setTextView_selectedCountry(Landroid/widget/TextView;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    return-void
.end method

.method public setTypeFace(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1829
    :try_start_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1830
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setDialogTypeFace(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1832
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setTypeFace(Landroid/graphics/Typeface;I)V
    .locals 1

    .line 1861
    :try_start_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1862
    invoke-virtual {p0, p1, p2}, Lcom/hbb20/CountryCodePicker;->setDialogTypeFace(Landroid/graphics/Typeface;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1864
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showArrow(Z)V
    .locals 0

    .line 1796
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->showArrow:Z

    .line 1797
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->refreshArrowViewVisibility()V

    return-void
.end method

.method public showCloseIcon(Z)V
    .locals 0

    .line 1046
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->showCloseIcon:Z

    return-void
.end method

.method public showFlag(Z)V
    .locals 1

    .line 1888
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->showFlag:Z

    if-eqz p1, :cond_0

    .line 1890
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->linearFlagHolder:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1892
    :cond_0
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->linearFlagHolder:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public showFullName(Z)V
    .locals 0

    .line 1897
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->showFullName:Z

    .line 1898
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->selectedCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    return-void
.end method

.method public showNameCode(Z)V
    .locals 0

    .line 1786
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->showNameCode:Z

    .line 1787
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->selectedCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    return-void
.end method

.method storeSelectedCountryNameCode(Ljava/lang/String;)V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->CCP_PREF_FILE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 468
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 471
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->selectionMemoryTag:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 474
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
