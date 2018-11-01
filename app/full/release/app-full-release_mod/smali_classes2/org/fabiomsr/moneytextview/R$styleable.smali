.class public final Lorg/fabiomsr/moneytextview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fabiomsr/moneytextview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final MoneyTextView:[I

.field public static final MoneyTextView_amount:I = 0x0

.field public static final MoneyTextView_baseTextColor:I = 0x1

.field public static final MoneyTextView_baseTextSize:I = 0x2

.field public static final MoneyTextView_decimalDigitsTextSize:I = 0x3

.field public static final MoneyTextView_decimalGravity:I = 0x4

.field public static final MoneyTextView_decimalMargin:I = 0x5

.field public static final MoneyTextView_decimalSeparator:I = 0x6

.field public static final MoneyTextView_decimalTextColor:I = 0x7

.field public static final MoneyTextView_decimalUnderline:I = 0x8

.field public static final MoneyTextView_fontPath:I = 0x9

.field public static final MoneyTextView_format:I = 0xa

.field public static final MoneyTextView_gravity:I = 0xb

.field public static final MoneyTextView_includeDecimalSeparator:I = 0xc

.field public static final MoneyTextView_symbol:I = 0xd

.field public static final MoneyTextView_symbolGravity:I = 0xe

.field public static final MoneyTextView_symbolMargin:I = 0xf

.field public static final MoneyTextView_symbolTextColor:I = 0x10

.field public static final MoneyTextView_symbolTextSize:I = 0x11


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    .line 63
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/fabiomsr/moneytextview/R$styleable;->MoneyTextView:[I

    return-void

    :array_0
    .array-data 4
        0x7f04002e
        0x7f04003f
        0x7f040040
        0x7f0400f3
        0x7f0400f4
        0x7f0400f5
        0x7f0400f6
        0x7f0400f7
        0x7f0400f8
        0x7f040131
        0x7f04013b
        0x7f04013f
        0x7f04015a
        0x7f040250
        0x7f040251
        0x7f040252
        0x7f040253
        0x7f040254
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
