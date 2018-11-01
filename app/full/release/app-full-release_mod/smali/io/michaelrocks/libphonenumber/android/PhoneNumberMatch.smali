.class public final Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;
.super Ljava/lang/Object;
.source "PhoneNumberMatch.java"


# instance fields
.field private final number:Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

.field private final rawString:Ljava/lang/String;

.field private final start:I


# direct methods
.method constructor <init>(ILjava/lang/String;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    .line 72
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Start index must be >= 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    iput p1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;->start:I

    .line 78
    iput-object p2, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;->rawString:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;->number:Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    return-void

    .line 75
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public end()I
    .locals 2

    .line 94
    iget v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;->start:I

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;->rawString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 112
    :cond_0
    instance-of v1, p1, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 115
    :cond_1
    check-cast p1, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    .line 116
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;->rawString:Ljava/lang/String;

    iget-object v3, p1, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;->rawString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;->start:I

    iget v3, p1, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;->start:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;->number:Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    iget-object p1, p1, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;->number:Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    .line 117
    invoke-virtual {v1, p1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 104
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;->start:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;->rawString:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;->number:Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public number()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;
    .locals 1

    .line 84
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;->number:Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    return-object v0
.end method

.method public rawString()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;->rawString:Ljava/lang/String;

    return-object v0
.end method

.method public start()I
    .locals 1

    .line 89
    iget v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;->start:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneNumberMatch ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;->start()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;->end()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;->rawString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
