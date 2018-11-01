.class public final Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc$Builder;
.super Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
.source "Phonemetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .locals 0

    return-object p0
.end method

.method public mergeFrom(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc$Builder;
    .locals 3

    .line 211
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc$Builder;->setNationalNumberPattern(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 214
    :goto_0
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->getPossibleLengthCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 215
    invoke-virtual {p1, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->getPossibleLength(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc$Builder;->addPossibleLength(I)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnlyCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 218
    invoke-virtual {p1, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnly(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc$Builder;->addPossibleLengthLocalOnly(I)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 220
    :cond_2
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc$Builder;->setExampleNumber(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    :cond_3
    return-object p0
.end method
