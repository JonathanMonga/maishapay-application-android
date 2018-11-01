.class public Lcom/maishapay/model/client/MaishapayMessage;
.super Ljava/lang/Object;
.source "MaishapayMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maishapay/model/client/MaishapayMessage$MessageType;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/maishapay/model/client/MaishapayMessage; = null

.field public static final SUCCESS_MESSAGE:Ljava/lang/String; = "OK"


# instance fields
.field private messageType:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(ILcom/maishapay/model/client/MaishapayMessage$MessageType;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    .line 32
    iput-object p2, p0, Lcom/maishapay/model/client/MaishapayMessage;->messageType:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    return-void
.end method

.method private checkEmpruntMessage()Ljava/lang/String;
    .locals 2

    .line 188
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Vous devez rembourser votre emprunt avant de prendre un autre"

    return-object v0

    :cond_0
    const-string v0, "OK"

    return-object v0
.end method

.method private comfirmationTransfertCompteMessage()Ljava/lang/String;
    .locals 2

    .line 147
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    if-nez v0, :cond_0

    const-string v0, "Le code Pin saisi n\'est pas correct"

    return-object v0

    .line 149
    :cond_0
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "Echec de transfert"

    return-object v0

    :cond_1
    const-string v0, "OK"

    return-object v0
.end method

.method private comfirmationTransfertEpargneMessage()Ljava/lang/String;
    .locals 1

    .line 181
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    if-nez v0, :cond_0

    const-string v0, "Votre transfert \u00e0 echou\u00e9, veuillez recommencer"

    return-object v0

    :cond_0
    const-string v0, "OK"

    return-object v0
.end method

.method private confimationCreationCompteMessage()Ljava/lang/String;
    .locals 1

    .line 111
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    if-nez v0, :cond_0

    const-string v0, "Echec de cr\u00e9ation veuillez recommencer plutatrd"

    return-object v0

    :cond_0
    const-string v0, "OK"

    return-object v0
.end method

.method private confirmationRetraitMessage()Ljava/lang/String;
    .locals 1

    .line 174
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    if-nez v0, :cond_0

    const-string v0, "Le numero de l\'Agent n\'est pas correct"

    return-object v0

    :cond_0
    const-string v0, "OK"

    return-object v0
.end method

.method private empruntMessage()Ljava/lang/String;
    .locals 2

    .line 195
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    if-nez v0, :cond_0

    const-string v0, "Cette operation est momentanement indisponible, veuillez reessayer plutard"

    return-object v0

    .line 197
    :cond_0
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "Ce code Pin n\'est pas correct, veuillez entrez un autre"

    return-object v0

    :cond_1
    const-string v0, "OK"

    return-object v0
.end method

.method public static generateMessage(Lcom/maishapay/model/client/MaishapayMessage$MessageType;I)Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/maishapay/model/client/MaishapayMessage;->INSTANCE:Lcom/maishapay/model/client/MaishapayMessage;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/maishapay/model/client/MaishapayMessage;

    invoke-direct {v0, p1, p0}, Lcom/maishapay/model/client/MaishapayMessage;-><init>(ILcom/maishapay/model/client/MaishapayMessage$MessageType;)V

    sput-object v0, Lcom/maishapay/model/client/MaishapayMessage;->INSTANCE:Lcom/maishapay/model/client/MaishapayMessage;

    .line 39
    :cond_0
    sget-object p0, Lcom/maishapay/model/client/MaishapayMessage;->INSTANCE:Lcom/maishapay/model/client/MaishapayMessage;

    invoke-direct {p0}, Lcom/maishapay/model/client/MaishapayMessage;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMessage()Ljava/lang/String;
    .locals 2

    .line 43
    sget-object v0, Lcom/maishapay/model/client/MaishapayMessage$1;->$SwitchMap$com$maishapay$model$client$MaishapayMessage$MessageType:[I

    iget-object v1, p0, Lcom/maishapay/model/client/MaishapayMessage;->messageType:Lcom/maishapay/model/client/MaishapayMessage$MessageType;

    invoke-virtual {v1}, Lcom/maishapay/model/client/MaishapayMessage$MessageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 101
    invoke-direct {p0}, Lcom/maishapay/model/client/MaishapayMessage;->nousContacterMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :pswitch_0
    invoke-direct {p0}, Lcom/maishapay/model/client/MaishapayMessage;->checkEmpruntMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :pswitch_1
    invoke-direct {p0}, Lcom/maishapay/model/client/MaishapayMessage;->pinPerduMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :pswitch_2
    invoke-direct {p0}, Lcom/maishapay/model/client/MaishapayMessage;->empruntMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :pswitch_3
    invoke-direct {p0}, Lcom/maishapay/model/client/MaishapayMessage;->updateProfilMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 81
    :pswitch_4
    invoke-direct {p0}, Lcom/maishapay/model/client/MaishapayMessage;->comfirmationTransfertEpargneMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :pswitch_5
    invoke-direct {p0}, Lcom/maishapay/model/client/MaishapayMessage;->confirmationRetraitMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :pswitch_6
    invoke-direct {p0}, Lcom/maishapay/model/client/MaishapayMessage;->retraitMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 69
    :pswitch_7
    invoke-direct {p0}, Lcom/maishapay/model/client/MaishapayMessage;->transfertEpargneMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :pswitch_8
    invoke-direct {p0}, Lcom/maishapay/model/client/MaishapayMessage;->comfirmationTransfertCompteMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :pswitch_9
    invoke-direct {p0}, Lcom/maishapay/model/client/MaishapayMessage;->transfertCompteMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 57
    :pswitch_a
    invoke-direct {p0}, Lcom/maishapay/model/client/MaishapayMessage;->inscriptionMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53
    :pswitch_b
    invoke-direct {p0}, Lcom/maishapay/model/client/MaishapayMessage;->soldeEpargneMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 49
    :pswitch_c
    invoke-direct {p0}, Lcom/maishapay/model/client/MaishapayMessage;->confimationCreationCompteMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 45
    :pswitch_d
    invoke-direct {p0}, Lcom/maishapay/model/client/MaishapayMessage;->userMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
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

.method private inscriptionMessage()Ljava/lang/String;
    .locals 2

    .line 125
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    if-nez v0, :cond_0

    const-string v0, "Echec d\'inscription, veuillez reessayer"

    return-object v0

    .line 127
    :cond_0
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "Desol\u00e9, ce numero est d\u00e9ja utilis\u00e9 par une autre personne"

    return-object v0

    :cond_1
    const-string v0, "OK"

    return-object v0
.end method

.method private nousContacterMessage()Ljava/lang/String;
    .locals 1

    .line 204
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    if-nez v0, :cond_0

    const-string v0, "Echec d\'envoie E-mail, veuillez reessayer"

    return-object v0

    :cond_0
    const-string v0, "OK"

    return-object v0
.end method

.method private pinPerduMessage()Ljava/lang/String;
    .locals 2

    .line 218
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    if-nez v0, :cond_0

    const-string v0, "Les donn\u00e9es que vous avez saisies ne sont pas correctes"

    return-object v0

    .line 220
    :cond_0
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "Echec d\'envoie E-mail, veuillez reessayer"

    return-object v0

    :cond_1
    const-string v0, "OK"

    return-object v0
.end method

.method private retraitMessage()Ljava/lang/String;
    .locals 2

    .line 165
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    if-nez v0, :cond_0

    const-string v0, "Le numero de l\'Agent n\'est pas correct"

    return-object v0

    .line 167
    :cond_0
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "Desol\u00e9, votre solde est insuffisant"

    return-object v0

    :cond_1
    const-string v0, "OK"

    return-object v0
.end method

.method private soldeEpargneMessage()Ljava/lang/String;
    .locals 1

    .line 118
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    if-nez v0, :cond_0

    const-string v0, "Desol\u00e9, vous ne disposez pas d\'un compte epargne"

    return-object v0

    :cond_0
    const-string v0, "OK"

    return-object v0
.end method

.method private transfertCompteMessage()Ljava/lang/String;
    .locals 2

    .line 134
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    if-nez v0, :cond_0

    const-string v0, "Le numero de destinataire n\'existe pas dans Maishapay"

    return-object v0

    .line 136
    :cond_0
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "Desol\u00e9, votre compte ne dispose pas beaucoup de solde pour effectuer ce transfert"

    return-object v0

    .line 138
    :cond_1
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const-string v0, "Le compte de votre destinataire est indisponible pour le moment"

    return-object v0

    .line 140
    :cond_2
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const-string v0, "Desol\u00e9, vous n\'\u00eates pas autoris\u00e9 \u00e0 effectuer cette operation, veuillez contacter le service Maishpay"

    return-object v0

    :cond_3
    const-string v0, "OK"

    return-object v0
.end method

.method private transfertEpargneMessage()Ljava/lang/String;
    .locals 2

    .line 156
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    if-nez v0, :cond_0

    const-string v0, "D\u00e9sol\u00e9, vous ne disposez pas de compte epargne, veuillez en cr\u00e9er pour faire ce tranfert"

    return-object v0

    .line 158
    :cond_0
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "D\u00e9sol\u00e9, votre solde est insuffisant pour ce transfert"

    return-object v0

    :cond_1
    const-string v0, "OK"

    return-object v0
.end method

.method private updateProfilMessage()Ljava/lang/String;
    .locals 2

    .line 211
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "Le code Pin entr\u00e9 n\'est pas correct"

    return-object v0

    :cond_0
    const-string v0, "OK"

    return-object v0
.end method

.method private userMessage()Ljava/lang/String;
    .locals 1

    .line 107
    iget v0, p0, Lcom/maishapay/model/client/MaishapayMessage;->status:I

    if-nez v0, :cond_0

    const-string v0, "Les informations entr\u00e9es ne sont pas correctes, verifiez votre code PIN"

    goto :goto_0

    :cond_0
    const-string v0, "OK"

    :goto_0
    return-object v0
.end method
