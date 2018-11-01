.class public Lorg/alfonz/utility/Logcat$Config$Builder;
.super Ljava/lang/Object;
.source "Logcat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alfonz/utility/Logcat$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mEnabled:Z

.field private mShowCodeLocation:Z

.field private mShowCodeLocationLine:Z

.field private mShowCodeLocationThread:Z

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lorg/alfonz/utility/Logcat$Config$Builder;->mEnabled:Z

    const-string v1, "LOGCAT"

    .line 104
    iput-object v1, p0, Lorg/alfonz/utility/Logcat$Config$Builder;->mTag:Ljava/lang/String;

    const/4 v1, 0x1

    .line 105
    iput-boolean v1, p0, Lorg/alfonz/utility/Logcat$Config$Builder;->mShowCodeLocation:Z

    .line 106
    iput-boolean v0, p0, Lorg/alfonz/utility/Logcat$Config$Builder;->mShowCodeLocationThread:Z

    .line 107
    iput-boolean v0, p0, Lorg/alfonz/utility/Logcat$Config$Builder;->mShowCodeLocationLine:Z

    return-void
.end method


# virtual methods
.method public build()Lorg/alfonz/utility/Logcat$Config;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 141
    new-instance v7, Lorg/alfonz/utility/Logcat$Config;

    iget-boolean v1, p0, Lorg/alfonz/utility/Logcat$Config$Builder;->mEnabled:Z

    iget-object v2, p0, Lorg/alfonz/utility/Logcat$Config$Builder;->mTag:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/alfonz/utility/Logcat$Config$Builder;->mShowCodeLocation:Z

    iget-boolean v4, p0, Lorg/alfonz/utility/Logcat$Config$Builder;->mShowCodeLocationThread:Z

    iget-boolean v5, p0, Lorg/alfonz/utility/Logcat$Config$Builder;->mShowCodeLocationLine:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/alfonz/utility/Logcat$Config;-><init>(ZLjava/lang/String;ZZZLorg/alfonz/utility/Logcat$1;)V

    return-object v7
.end method

.method public setEnabled(Z)Lorg/alfonz/utility/Logcat$Config$Builder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 111
    iput-boolean p1, p0, Lorg/alfonz/utility/Logcat$Config$Builder;->mEnabled:Z

    return-object p0
.end method

.method public setShowCodeLocation(Z)Lorg/alfonz/utility/Logcat$Config$Builder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 123
    iput-boolean p1, p0, Lorg/alfonz/utility/Logcat$Config$Builder;->mShowCodeLocation:Z

    return-object p0
.end method

.method public setShowCodeLocationLine(Z)Lorg/alfonz/utility/Logcat$Config$Builder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 135
    iput-boolean p1, p0, Lorg/alfonz/utility/Logcat$Config$Builder;->mShowCodeLocationLine:Z

    return-object p0
.end method

.method public setShowCodeLocationThread(Z)Lorg/alfonz/utility/Logcat$Config$Builder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 129
    iput-boolean p1, p0, Lorg/alfonz/utility/Logcat$Config$Builder;->mShowCodeLocationThread:Z

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lorg/alfonz/utility/Logcat$Config$Builder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 117
    iput-object p1, p0, Lorg/alfonz/utility/Logcat$Config$Builder;->mTag:Ljava/lang/String;

    return-object p0
.end method
