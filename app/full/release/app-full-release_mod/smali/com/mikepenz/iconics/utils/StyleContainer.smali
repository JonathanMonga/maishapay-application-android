.class public Lcom/mikepenz/iconics/utils/StyleContainer;
.super Ljava/lang/Object;
.source "StyleContainer.java"


# instance fields
.field public endIndex:I

.field public flags:I

.field public font:Lcom/mikepenz/iconics/typeface/ITypeface;

.field public icon:Ljava/lang/String;

.field public span:Landroid/text/ParcelableSpan;

.field public startIndex:I

.field public style:Landroid/text/style/CharacterStyle;


# direct methods
.method public constructor <init>(IILandroid/text/ParcelableSpan;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x21

    .line 16
    iput v0, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->flags:I

    .line 34
    iput p1, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->startIndex:I

    .line 35
    iput p2, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->endIndex:I

    .line 36
    iput-object p3, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->span:Landroid/text/ParcelableSpan;

    return-void
.end method

.method public constructor <init>(IILandroid/text/ParcelableSpan;I)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x21

    .line 16
    iput v0, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->flags:I

    .line 40
    iput p1, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->startIndex:I

    .line 41
    iput p2, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->endIndex:I

    .line 42
    iput-object p3, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->span:Landroid/text/ParcelableSpan;

    .line 43
    iput p4, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->flags:I

    return-void
.end method

.method public constructor <init>(IILandroid/text/style/CharacterStyle;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x21

    .line 16
    iput v0, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->flags:I

    .line 47
    iput p1, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->startIndex:I

    .line 48
    iput p2, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->endIndex:I

    .line 49
    iput-object p3, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->style:Landroid/text/style/CharacterStyle;

    return-void
.end method

.method public constructor <init>(IILandroid/text/style/CharacterStyle;I)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x21

    .line 16
    iput v0, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->flags:I

    .line 53
    iput p1, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->startIndex:I

    .line 54
    iput p2, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->endIndex:I

    .line 55
    iput-object p3, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->style:Landroid/text/style/CharacterStyle;

    .line 56
    iput p4, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->flags:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Lcom/mikepenz/iconics/typeface/ITypeface;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x21

    .line 16
    iput v0, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->flags:I

    .line 27
    iput p1, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->startIndex:I

    .line 28
    iput p2, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->endIndex:I

    .line 29
    iput-object p3, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->icon:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->font:Lcom/mikepenz/iconics/typeface/ITypeface;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Lcom/mikepenz/iconics/typeface/ITypeface;I)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x21

    .line 16
    iput v0, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->flags:I

    .line 19
    iput p1, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->startIndex:I

    .line 20
    iput p2, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->endIndex:I

    .line 21
    iput-object p3, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->icon:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->font:Lcom/mikepenz/iconics/typeface/ITypeface;

    .line 23
    iput p5, p0, Lcom/mikepenz/iconics/utils/StyleContainer;->flags:I

    return-void
.end method
