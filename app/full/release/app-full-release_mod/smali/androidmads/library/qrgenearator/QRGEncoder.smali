.class public Landroidmads/library/qrgenearator/QRGEncoder;
.super Ljava/lang/Object;
.source "QRGEncoder.java"


# static fields
.field private static final BLACK:I = -0x1000000

.field private static final WHITE:I = -0x1


# instance fields
.field private contents:Ljava/lang/String;

.field private dimension:I

.field private displayContents:Ljava/lang/String;

.field private encoded:Z

.field private format:Lcom/google/zxing/BarcodeFormat;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 25
    iput v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->dimension:I

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->encoded:Z

    .line 33
    iput p4, p0, Landroidmads/library/qrgenearator/QRGEncoder;->dimension:I

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidmads/library/qrgenearator/QRGEncoder;->encodeContents(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->encoded:Z

    return-void
.end method

.method private encodeContents(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 2

    .line 43
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 44
    iget-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-ne v0, v1, :cond_0

    .line 45
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroidmads/library/qrgenearator/QRGEncoder;->encodeQRCodeContents(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 48
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    const-string p1, "Text"

    .line 50
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    .line 52
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private encodeQRCodeContents(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6

    .line 56
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "EMAIL_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "TEXT_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "LOCATION_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x5

    goto :goto_1

    :sswitch_3
    const-string v0, "SMS_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "CONTACT_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "PHONE_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p3, -0x1

    :goto_1
    packed-switch p3, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    if-eqz p2, :cond_c

    const-string p1, "LAT"

    const p3, 0x7f7fffff    # Float.MAX_VALUE

    .line 161
    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    const-string v0, "LONG"

    .line 162
    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p2

    cmpl-float v0, p1, p3

    if-eqz v0, :cond_c

    cmpl-float p3, p2, p3

    if-eqz p3, :cond_c

    .line 164
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "geo:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 165
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    const-string p1, "Location"

    .line 166
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    goto/16 :goto_6

    :pswitch_1
    if-eqz p2, :cond_c

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p3, 0x64

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "MECARD:"

    .line 93
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "name"

    .line 95
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/16 v2, 0x3b

    if-eqz p3, :cond_1

    const-string v3, "N:"

    .line 97
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroidmads/library/qrgenearator/QRGEncoder;->escapeMECARD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p3, "postal"

    .line 101
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/16 v3, 0xa

    if-eqz p3, :cond_2

    const-string v4, "ADR:"

    .line 103
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroidmads/library/qrgenearator/QRGEncoder;->escapeMECARD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_2
    new-instance p3, Ljava/util/HashSet;

    sget-object v4, Landroidmads/library/qrgenearator/QRGContents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {p3, v4}, Ljava/util/HashSet;-><init>(I)V

    move v4, v1

    .line 108
    :goto_2
    sget-object v5, Landroidmads/library/qrgenearator/QRGContents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 109
    sget-object v5, Landroidmads/library/qrgenearator/QRGContents;->PHONE_KEYS:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 111
    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 114
    :cond_4
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "TEL:"

    .line 115
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroidmads/library/qrgenearator/QRGEncoder;->escapeMECARD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 120
    :cond_5
    new-instance p3, Ljava/util/HashSet;

    sget-object v4, Landroidmads/library/qrgenearator/QRGContents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {p3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 121
    :goto_4
    sget-object v4, Landroidmads/library/qrgenearator/QRGContents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_7

    .line 122
    sget-object v4, Landroidmads/library/qrgenearator/QRGContents;->EMAIL_KEYS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 124
    invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 127
    :cond_7
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "EMAIL:"

    .line 128
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroidmads/library/qrgenearator/QRGEncoder;->escapeMECARD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    const-string p3, "URL_KEY"

    .line 132
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_9

    const-string v1, "URL:"

    .line 135
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string p3, "NOTE_KEY"

    .line 139
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    const-string p3, "NOTE:"

    .line 141
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroidmads/library/qrgenearator/QRGEncoder;->escapeMECARD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_b

    .line 147
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    const-string p1, "Contact"

    .line 150
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    goto/16 :goto_6

    :cond_b
    const/4 p1, 0x0

    .line 152
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 153
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    goto/16 :goto_6

    .line 81
    :pswitch_2
    invoke-static {p1}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sms:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 84
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    const-string p1, "SMS"

    .line 85
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    goto :goto_6

    .line 73
    :pswitch_3
    invoke-static {p1}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "tel:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 76
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    const-string p1, "Phone"

    .line 77
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    goto :goto_6

    .line 65
    :pswitch_4
    invoke-static {p1}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mailto:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    const-string p1, "E-Mail"

    .line 69
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    goto :goto_6

    :pswitch_5
    if-eqz p1, :cond_c

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_c

    .line 59
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    const-string p1, "Text"

    .line 61
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    :cond_c
    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4e09e475 -> :sswitch_5
        -0x27f26fe7 -> :sswitch_4
        0x2a45da80 -> :sswitch_3
        0x506b3984 -> :sswitch_2
        0x6a03370c -> :sswitch_1
        0x6d46ba1d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static escapeMECARD(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p0, :cond_4

    const/16 v0, 0x3a

    .line 219
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x3b

    if-gez v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 225
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v0, :cond_1

    if-ne v5, v2, :cond_2

    :cond_1
    const/16 v6, 0x5c

    .line 227
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    :cond_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 231
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    return-object p0
.end method

.method private static guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 202
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 203
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    const-string p0, "UTF-8"

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 214
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 215
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public encodeAsBitmap()Landroid/graphics/Bitmap;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 174
    iget-boolean v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->encoded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 177
    :cond_0
    iget-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    invoke-static {v0}, Landroidmads/library/qrgenearator/QRGEncoder;->guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 180
    sget-object v2, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v8, v1

    .line 182
    new-instance v3, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v3}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 183
    iget-object v4, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    iget-object v5, p0, Landroidmads/library/qrgenearator/QRGEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    iget v6, p0, Landroidmads/library/qrgenearator/QRGEncoder;->dimension:I

    iget v7, p0, Landroidmads/library/qrgenearator/QRGEncoder;->dimension:I

    invoke-virtual/range {v3 .. v8}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    .line 185
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 186
    new-array v2, v1, [I

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v8, :cond_4

    mul-int v4, v3, v7

    move v5, v1

    :goto_1
    if-ge v5, v7, :cond_3

    add-int v6, v4, v5

    .line 191
    invoke-virtual {v0, v5, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_2

    const/high16 v9, -0x1000000

    goto :goto_2

    :cond_2
    const/4 v9, -0x1

    :goto_2
    aput v9, v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move v4, v7

    .line 196
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    return-object v0
.end method
