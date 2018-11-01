.class public Lnet/grandcentrix/thirtyinch/TiConfiguration;
.super Ljava/lang/Object;
.source "TiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/grandcentrix/thirtyinch/TiConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lnet/grandcentrix/thirtyinch/TiConfiguration;


# instance fields
.field private mCallOnMainThreadInterceptorEnabled:Z

.field private mDistinctUntilChangedInterceptorEnabled:Z

.field private mRetainPresenter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 187
    new-instance v0, Lnet/grandcentrix/thirtyinch/TiConfiguration$Builder;

    invoke-direct {v0}, Lnet/grandcentrix/thirtyinch/TiConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Lnet/grandcentrix/thirtyinch/TiConfiguration$Builder;->build()Lnet/grandcentrix/thirtyinch/TiConfiguration;

    move-result-object v0

    sput-object v0, Lnet/grandcentrix/thirtyinch/TiConfiguration;->DEFAULT:Lnet/grandcentrix/thirtyinch/TiConfiguration;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiConfiguration;->mCallOnMainThreadInterceptorEnabled:Z

    .line 191
    iput-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiConfiguration;->mDistinctUntilChangedInterceptorEnabled:Z

    .line 193
    iput-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiConfiguration;->mRetainPresenter:Z

    return-void
.end method

.method synthetic constructor <init>(Lnet/grandcentrix/thirtyinch/TiConfiguration$1;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lnet/grandcentrix/thirtyinch/TiConfiguration;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lnet/grandcentrix/thirtyinch/TiConfiguration;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lnet/grandcentrix/thirtyinch/TiConfiguration;->mCallOnMainThreadInterceptorEnabled:Z

    return p1
.end method

.method static synthetic access$202(Lnet/grandcentrix/thirtyinch/TiConfiguration;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lnet/grandcentrix/thirtyinch/TiConfiguration;->mDistinctUntilChangedInterceptorEnabled:Z

    return p1
.end method

.method static synthetic access$302(Lnet/grandcentrix/thirtyinch/TiConfiguration;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lnet/grandcentrix/thirtyinch/TiConfiguration;->mRetainPresenter:Z

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 206
    :cond_0
    instance-of v1, p1, Lnet/grandcentrix/thirtyinch/TiConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 210
    :cond_1
    check-cast p1, Lnet/grandcentrix/thirtyinch/TiConfiguration;

    .line 212
    iget-boolean v1, p0, Lnet/grandcentrix/thirtyinch/TiConfiguration;->mCallOnMainThreadInterceptorEnabled:Z

    iget-boolean v3, p1, Lnet/grandcentrix/thirtyinch/TiConfiguration;->mCallOnMainThreadInterceptorEnabled:Z

    if-eq v1, v3, :cond_2

    return v2

    .line 215
    :cond_2
    iget-boolean v1, p0, Lnet/grandcentrix/thirtyinch/TiConfiguration;->mDistinctUntilChangedInterceptorEnabled:Z

    iget-boolean v3, p1, Lnet/grandcentrix/thirtyinch/TiConfiguration;->mDistinctUntilChangedInterceptorEnabled:Z

    if-eq v1, v3, :cond_3

    return v2

    .line 219
    :cond_3
    iget-boolean v1, p0, Lnet/grandcentrix/thirtyinch/TiConfiguration;->mRetainPresenter:Z

    iget-boolean p1, p1, Lnet/grandcentrix/thirtyinch/TiConfiguration;->mRetainPresenter:Z

    if-ne v1, p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 225
    iget-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiConfiguration;->mCallOnMainThreadInterceptorEnabled:Z

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    .line 226
    iget-boolean v2, p0, Lnet/grandcentrix/thirtyinch/TiConfiguration;->mDistinctUntilChangedInterceptorEnabled:Z

    add-int/2addr v0, v2

    mul-int/2addr v1, v0

    .line 227
    iget-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiConfiguration;->mRetainPresenter:Z

    add-int/2addr v1, v0

    return v1
.end method

.method public isCallOnMainThreadInterceptorEnabled()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiConfiguration;->mCallOnMainThreadInterceptorEnabled:Z

    return v0
.end method

.method public isDistinctUntilChangedInterceptorEnabled()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiConfiguration;->mDistinctUntilChangedInterceptorEnabled:Z

    return v0
.end method

.method public shouldRetainPresenter()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lnet/grandcentrix/thirtyinch/TiConfiguration;->mRetainPresenter:Z

    return v0
.end method
