.class public Lcom/maishapay/model/domain/SoldeAndRapport;
.super Ljava/lang/Object;
.source "UserDataPreference.java"


# instance fields
.field private envoiDollars:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "envoiDollars"
    .end annotation
.end field

.field private envoiFrancs:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "envoiFrancs"
    .end annotation
.end field

.field private recuDollars:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recuDollars"
    .end annotation
.end field

.field private recuFrancs:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recuFrancs"
    .end annotation
.end field

.field private soldeDollars:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "soldeDollars"
    .end annotation
.end field

.field private soldeFrancs:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "soldeFrancs"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnvoiDollars()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/maishapay/model/domain/SoldeAndRapport;->envoiDollars:I

    return v0
.end method

.method public getEnvoiFrancs()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/maishapay/model/domain/SoldeAndRapport;->envoiFrancs:I

    return v0
.end method

.method public getRecuDollars()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/maishapay/model/domain/SoldeAndRapport;->recuDollars:I

    return v0
.end method

.method public getRecuFrancs()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/maishapay/model/domain/SoldeAndRapport;->recuFrancs:I

    return v0
.end method

.method public getSoldeDollars()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/maishapay/model/domain/SoldeAndRapport;->soldeDollars:I

    return v0
.end method

.method public getSoldeFrancs()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/maishapay/model/domain/SoldeAndRapport;->soldeFrancs:I

    return v0
.end method

.method public setEnvoiDollars(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/maishapay/model/domain/SoldeAndRapport;->envoiDollars:I

    return-void
.end method

.method public setEnvoiFrancs(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/maishapay/model/domain/SoldeAndRapport;->envoiFrancs:I

    return-void
.end method

.method public setRecuDollars(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/maishapay/model/domain/SoldeAndRapport;->recuDollars:I

    return-void
.end method

.method public setRecuFrancs(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/maishapay/model/domain/SoldeAndRapport;->recuFrancs:I

    return-void
.end method

.method public setSoldeDollars(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/maishapay/model/domain/SoldeAndRapport;->soldeDollars:I

    return-void
.end method

.method public setSoldeFrancs(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/maishapay/model/domain/SoldeAndRapport;->soldeFrancs:I

    return-void
.end method
