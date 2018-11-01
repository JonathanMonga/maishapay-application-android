.class public final enum Lcom/maishapay/model/client/MaishapayMessage$MessageType;
.super Ljava/lang/Enum;
.source "MaishapayMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maishapay/model/client/MaishapayMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/maishapay/model/client/MaishapayMessage$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/maishapay/model/client/MaishapayMessage$MessageType;

.field public static final enum CHECK_EMPRUNT:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

.field public static final enum CONFIRM_CREATION_COMPTE:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

.field public static final enum CONFIRM_RETRAIT:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

.field public static final enum CONFIRM_TRANSFERT_COMPTE:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

.field public static final enum CONFIRM_TRANSFERT_EPARGNE:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

.field public static final enum EMPRUNT:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

.field public static final enum INSCRIPTION:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

.field public static final enum NOUS_CONTACTER:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

.field public static final enum PIN_PERDU:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

.field public static final enum PROFIL:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

.field public static final enum RETRAIT:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

.field public static final enum SOLDE_EPARGNE:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

.field public static final enum TRANSFERT_COMPTE:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

.field public static final enum TRANSFERT_EPARGNE:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

.field public static final enum USER:Lcom/maishapay/model/client/MaishapayMessage$MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 228
    new-instance v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    const-string v1, "USER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/maishapay/model/client/MaishapayMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->USER:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    .line 229
    new-instance v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    const-string v1, "CONFIRM_CREATION_COMPTE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/maishapay/model/client/MaishapayMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->CONFIRM_CREATION_COMPTE:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    .line 230
    new-instance v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    const-string v1, "SOLDE_EPARGNE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/maishapay/model/client/MaishapayMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->SOLDE_EPARGNE:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    .line 231
    new-instance v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    const-string v1, "INSCRIPTION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/maishapay/model/client/MaishapayMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->INSCRIPTION:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    .line 232
    new-instance v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    const-string v1, "TRANSFERT_COMPTE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/maishapay/model/client/MaishapayMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->TRANSFERT_COMPTE:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    .line 233
    new-instance v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    const-string v1, "TRANSFERT_EPARGNE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/maishapay/model/client/MaishapayMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->TRANSFERT_EPARGNE:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    .line 234
    new-instance v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    const-string v1, "CONFIRM_TRANSFERT_COMPTE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/maishapay/model/client/MaishapayMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->CONFIRM_TRANSFERT_COMPTE:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    .line 235
    new-instance v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    const-string v1, "CONFIRM_TRANSFERT_EPARGNE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/maishapay/model/client/MaishapayMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->CONFIRM_TRANSFERT_EPARGNE:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    .line 236
    new-instance v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    const-string v1, "RETRAIT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/maishapay/model/client/MaishapayMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->RETRAIT:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    .line 237
    new-instance v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    const-string v1, "CONFIRM_RETRAIT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/maishapay/model/client/MaishapayMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->CONFIRM_RETRAIT:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    .line 238
    new-instance v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    const-string v1, "EMPRUNT"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/maishapay/model/client/MaishapayMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->EMPRUNT:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    .line 239
    new-instance v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    const-string v1, "CHECK_EMPRUNT"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/maishapay/model/client/MaishapayMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->CHECK_EMPRUNT:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    .line 240
    new-instance v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    const-string v1, "NOUS_CONTACTER"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/maishapay/model/client/MaishapayMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->NOUS_CONTACTER:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    .line 241
    new-instance v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    const-string v1, "PROFIL"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/maishapay/model/client/MaishapayMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->PROFIL:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    .line 242
    new-instance v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    const-string v1, "PIN_PERDU"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/maishapay/model/client/MaishapayMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->PIN_PERDU:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    const/16 v0, 0xf

    .line 227
    new-array v0, v0, [Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    sget-object v1, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->USER:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->CONFIRM_CREATION_COMPTE:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->SOLDE_EPARGNE:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->INSCRIPTION:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->TRANSFERT_COMPTE:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->TRANSFERT_EPARGNE:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->CONFIRM_TRANSFERT_COMPTE:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->CONFIRM_TRANSFERT_EPARGNE:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->RETRAIT:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->CONFIRM_RETRAIT:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->EMPRUNT:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->CHECK_EMPRUNT:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->NOUS_CONTACTER:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->PROFIL:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->PIN_PERDU:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    aput-object v1, v0, v15

    sput-object v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->$VALUES:[Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 227
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/maishapay/model/client/MaishapayMessage$MessageType;
    .locals 1

    .line 227
    const-class v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    return-object p0
.end method

.method public static values()[Lcom/maishapay/model/client/MaishapayMessage$MessageType;
    .locals 1

    .line 227
    sget-object v0, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->$VALUES:[Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    invoke-virtual {v0}, [Lcom/maishapay/model/client/MaishapayMessage$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    return-object v0
.end method
