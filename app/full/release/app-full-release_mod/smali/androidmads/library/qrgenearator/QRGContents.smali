.class public Landroidmads/library/qrgenearator/QRGContents;
.super Ljava/lang/Object;
.source "QRGContents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidmads/library/qrgenearator/QRGContents$Type;,
        Landroidmads/library/qrgenearator/QRGContents$ImageType;
    }
.end annotation


# static fields
.field public static final EMAIL_KEYS:[Ljava/lang/String;

.field public static final EMAIL_TYPE_KEYS:[Ljava/lang/String;

.field public static final NOTE_KEY:Ljava/lang/String; = "NOTE_KEY"

.field public static final PHONE_KEYS:[Ljava/lang/String;

.field public static final PHONE_TYPE_KEYS:[Ljava/lang/String;

.field public static final URL_KEY:Ljava/lang/String; = "URL_KEY"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    .line 38
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "phone"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "secondary_phone"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "tertiary_phone"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Landroidmads/library/qrgenearator/QRGContents;->PHONE_KEYS:[Ljava/lang/String;

    .line 43
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "phone_type"

    aput-object v2, v1, v3

    const-string v2, "secondary_phone_type"

    aput-object v2, v1, v4

    const-string v2, "tertiary_phone_type"

    aput-object v2, v1, v5

    sput-object v1, Landroidmads/library/qrgenearator/QRGContents;->PHONE_TYPE_KEYS:[Ljava/lang/String;

    .line 49
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "email"

    aput-object v2, v1, v3

    const-string v2, "secondary_email"

    aput-object v2, v1, v4

    const-string v2, "tertiary_email"

    aput-object v2, v1, v5

    sput-object v1, Landroidmads/library/qrgenearator/QRGContents;->EMAIL_KEYS:[Ljava/lang/String;

    .line 54
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "email_type"

    aput-object v1, v0, v3

    const-string v1, "secondary_email_type"

    aput-object v1, v0, v4

    const-string v1, "tertiary_email_type"

    aput-object v1, v0, v5

    sput-object v0, Landroidmads/library/qrgenearator/QRGContents;->EMAIL_TYPE_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
