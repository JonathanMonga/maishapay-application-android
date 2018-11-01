.class public Lcom/mikepenz/iconics/typeface/GenericFont$Icon;
.super Ljava/lang/Object;
.source "GenericFont.java"

# interfaces
.implements Lcom/mikepenz/iconics/typeface/IIcon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/iconics/typeface/GenericFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Icon"
.end annotation


# instance fields
.field private aChar:C

.field private mName:Ljava/lang/String;

.field private mTypeface:Lcom/mikepenz/iconics/typeface/ITypeface;

.field final synthetic this$0:Lcom/mikepenz/iconics/typeface/GenericFont;


# direct methods
.method public constructor <init>(Lcom/mikepenz/iconics/typeface/GenericFont;C)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/mikepenz/iconics/typeface/GenericFont$Icon;->this$0:Lcom/mikepenz/iconics/typeface/GenericFont;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-char p2, p0, Lcom/mikepenz/iconics/typeface/GenericFont$Icon;->aChar:C

    return-void
.end method

.method public constructor <init>(Lcom/mikepenz/iconics/typeface/GenericFont;Ljava/lang/String;C)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/mikepenz/iconics/typeface/GenericFont$Icon;->this$0:Lcom/mikepenz/iconics/typeface/GenericFont;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p2, p0, Lcom/mikepenz/iconics/typeface/GenericFont$Icon;->mName:Ljava/lang/String;

    .line 146
    iput-char p3, p0, Lcom/mikepenz/iconics/typeface/GenericFont$Icon;->aChar:C

    return-void
.end method


# virtual methods
.method public getCharacter()C
    .locals 1

    .line 169
    iget-char v0, p0, Lcom/mikepenz/iconics/typeface/GenericFont$Icon;->aChar:C

    return v0
.end method

.method public getFormattedName()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mikepenz/iconics/typeface/GenericFont$Icon;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/mikepenz/iconics/typeface/GenericFont$Icon;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/mikepenz/iconics/typeface/GenericFont$Icon;->mName:Ljava/lang/String;

    return-object v0

    .line 164
    :cond_0
    iget-char v0, p0, Lcom/mikepenz/iconics/typeface/GenericFont$Icon;->aChar:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeface()Lcom/mikepenz/iconics/typeface/ITypeface;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/mikepenz/iconics/typeface/GenericFont$Icon;->mTypeface:Lcom/mikepenz/iconics/typeface/ITypeface;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/mikepenz/iconics/typeface/GenericFont$Icon;->mTypeface:Lcom/mikepenz/iconics/typeface/ITypeface;

    return-object v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/iconics/typeface/GenericFont$Icon;->this$0:Lcom/mikepenz/iconics/typeface/GenericFont;

    return-object v0
.end method

.method public withTypeface(Lcom/mikepenz/iconics/typeface/ITypeface;)Lcom/mikepenz/iconics/typeface/GenericFont$Icon;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/mikepenz/iconics/typeface/GenericFont$Icon;->mTypeface:Lcom/mikepenz/iconics/typeface/ITypeface;

    return-object p0
.end method
