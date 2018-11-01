.class public Lcom/hbb20/InternationalPhoneTextWatcher;
.super Ljava/lang/Object;
.source "InternationalPhoneTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "Int\'l Phone TextWatcher"


# instance fields
.field private countryNameCode:Ljava/lang/String;

.field private countryPhoneCode:I

.field lastFormatted:Landroid/text/Editable;

.field private mFormatter:Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;

.field private mSelfChange:Z

.field private mStopFormatting:Z

.field private needUpdateForCountryChange:Z

.field phoneNumberUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mSelfChange:Z

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->lastFormatted:Landroid/text/Editable;

    .line 34
    iput-boolean v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->needUpdateForCountryChange:Z

    if-eqz p2, :cond_1

    .line 44
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->createInstance(Landroid/content/Context;)Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->phoneNumberUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    .line 47
    invoke-virtual {p0, p2, p3}, Lcom/hbb20/InternationalPhoneTextWatcher;->updateCountry(Ljava/lang/String;I)V

    return-void

    .line 45
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private hasSeparator(Ljava/lang/CharSequence;II)Z
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 209
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 210
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private reformat(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    .line 168
    iget-object v1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mFormatter:Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;

    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->clear()V

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->countryPhoneCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v0

    move v0, v3

    :goto_0
    if-ge v3, v2, :cond_2

    .line 178
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 179
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v0, :cond_0

    .line 181
    iget-object v4, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mFormatter:Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;

    invoke-virtual {v4, v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    move-result-object v4

    :cond_0
    move v0, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 187
    iget-object p1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mFormatter:Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;

    invoke-virtual {p1, v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    move-result-object v4

    .line 190
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_5

    .line 192
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_4

    .line 193
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 195
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    const-string p1, ""

    .line 199
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, ""

    :cond_6
    return-object p1
.end method

.method private stopFormatting()V
    .locals 1

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mStopFormatting:Z

    .line 204
    iget-object v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mFormatter:Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;

    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->clear()V

    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 10

    monitor-enter p0

    .line 88
    :try_start_0
    iget-boolean v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mStopFormatting:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 90
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mStopFormatting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 93
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mSelfChange:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 95
    monitor-exit p0

    return-void

    .line 99
    :cond_2
    :try_start_2
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 100
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-ne v0, v3, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v1

    .line 103
    :goto_0
    invoke-direct {p0, p1}, Lcom/hbb20/InternationalPhoneTextWatcher;->reformat(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v3, :cond_5

    .line 112
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_4

    :cond_5
    move v4, v1

    move v5, v4

    .line 117
    :goto_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v6

    if-ge v4, v6, :cond_8

    if-lt v4, v0, :cond_6

    goto :goto_2

    .line 121
    :cond_6
    invoke-interface {p1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v5, v5, 0x1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    move v0, v1

    move v4, v0

    .line 128
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_b

    if-ne v4, v5, :cond_9

    goto :goto_4

    .line 133
    :cond_9
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v6

    if-eqz v6, :cond_a

    add-int/lit8 v4, v4, 0x1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    move v0, v1

    :goto_4
    if-nez v3, :cond_c

    :goto_5
    add-int/lit8 v3, v0, -0x1

    if-lez v3, :cond_c

    .line 142
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_c

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_c
    if-eqz v7, :cond_d

    .line 150
    :try_start_3
    iput-boolean v2, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mSelfChange:Z

    const/4 v5, 0x0

    .line 151
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    move-object v4, p1

    invoke-interface/range {v4 .. v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 152
    iput-boolean v1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mSelfChange:Z

    .line 153
    iput-object p1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->lastFormatted:Landroid/text/Editable;

    .line 154
    invoke-static {p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 157
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 160
    :cond_d
    :goto_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 87
    monitor-exit p0

    throw p1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 66
    iget-boolean p4, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mSelfChange:Z

    if-nez p4, :cond_2

    iget-boolean p4, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mStopFormatting:Z

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    if-lez p3, :cond_1

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/hbb20/InternationalPhoneTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->needUpdateForCountryChange:Z

    if-nez p1, :cond_1

    .line 71
    invoke-direct {p0}, Lcom/hbb20/InternationalPhoneTextWatcher;->stopFormatting()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 77
    iget-boolean p3, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mSelfChange:Z

    if-nez p3, :cond_2

    iget-boolean p3, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mStopFormatting:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    if-lez p4, :cond_1

    .line 81
    invoke-direct {p0, p1, p2, p4}, Lcom/hbb20/InternationalPhoneTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/hbb20/InternationalPhoneTextWatcher;->stopFormatting()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public updateCountry(Ljava/lang/String;I)V
    .locals 6

    .line 51
    iput-object p1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->countryNameCode:Ljava/lang/String;

    .line 52
    iput p2, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->countryPhoneCode:I

    .line 53
    iget-object p2, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->phoneNumberUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    invoke-virtual {p2, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getAsYouTypeFormatter(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mFormatter:Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;

    .line 54
    iget-object p1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mFormatter:Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;

    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->clear()V

    .line 55
    iget-object p1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->lastFormatted:Landroid/text/Editable;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->needUpdateForCountryChange:Z

    .line 57
    iget-object p1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->phoneNumberUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    iget-object p1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->lastFormatted:Landroid/text/Editable;

    invoke-static {p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 58
    iget-object v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->lastFormatted:Landroid/text/Editable;

    const/4 v1, 0x0

    iget-object p1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->lastFormatted:Landroid/text/Editable;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->needUpdateForCountryChange:Z

    :cond_0
    return-void
.end method
