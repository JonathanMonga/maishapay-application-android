.class public Lcom/mikepenz/materialdrawer/holder/StringHolder;
.super Lcom/mikepenz/materialize/holder/StringHolder;
.source "StringHolder.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 14
    invoke-direct {p0, p1}, Lcom/mikepenz/materialize/holder/StringHolder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/mikepenz/materialize/holder/StringHolder;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method
