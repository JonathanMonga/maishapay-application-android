.class public Lnet/grandcentrix/thirtyinch/TiConfiguration$Builder;
.super Ljava/lang/Object;
.source "TiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/grandcentrix/thirtyinch/TiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mConfig:Lnet/grandcentrix/thirtyinch/TiConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lnet/grandcentrix/thirtyinch/TiConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/grandcentrix/thirtyinch/TiConfiguration;-><init>(Lnet/grandcentrix/thirtyinch/TiConfiguration$1;)V

    iput-object v0, p0, Lnet/grandcentrix/thirtyinch/TiConfiguration$Builder;->mConfig:Lnet/grandcentrix/thirtyinch/TiConfiguration;

    return-void
.end method


# virtual methods
.method public build()Lnet/grandcentrix/thirtyinch/TiConfiguration;
    .locals 1

    .line 63
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiConfiguration$Builder;->mConfig:Lnet/grandcentrix/thirtyinch/TiConfiguration;

    return-object v0
.end method

.method public setCallOnMainThreadInterceptorEnabled(Z)Lnet/grandcentrix/thirtyinch/TiConfiguration$Builder;
    .locals 1

    .line 99
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiConfiguration$Builder;->mConfig:Lnet/grandcentrix/thirtyinch/TiConfiguration;

    invoke-static {v0, p1}, Lnet/grandcentrix/thirtyinch/TiConfiguration;->access$102(Lnet/grandcentrix/thirtyinch/TiConfiguration;Z)Z

    return-object p0
.end method

.method public setDistinctUntilChangedInterceptorEnabled(Z)Lnet/grandcentrix/thirtyinch/TiConfiguration$Builder;
    .locals 1

    .line 140
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiConfiguration$Builder;->mConfig:Lnet/grandcentrix/thirtyinch/TiConfiguration;

    invoke-static {v0, p1}, Lnet/grandcentrix/thirtyinch/TiConfiguration;->access$202(Lnet/grandcentrix/thirtyinch/TiConfiguration;Z)Z

    return-object p0
.end method

.method public setRetainPresenterEnabled(Z)Lnet/grandcentrix/thirtyinch/TiConfiguration$Builder;
    .locals 1

    .line 168
    iget-object v0, p0, Lnet/grandcentrix/thirtyinch/TiConfiguration$Builder;->mConfig:Lnet/grandcentrix/thirtyinch/TiConfiguration;

    invoke-static {v0, p1}, Lnet/grandcentrix/thirtyinch/TiConfiguration;->access$302(Lnet/grandcentrix/thirtyinch/TiConfiguration;Z)Z

    return-object p0
.end method

.method public setUseStaticSaviorToRetain(Z)Lnet/grandcentrix/thirtyinch/TiConfiguration$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method
