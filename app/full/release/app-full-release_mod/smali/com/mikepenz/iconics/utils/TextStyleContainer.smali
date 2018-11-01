.class public Lcom/mikepenz/iconics/utils/TextStyleContainer;
.super Ljava/lang/Object;
.source "TextStyleContainer.java"


# instance fields
.field public spannableStringBuilder:Landroid/text/SpannableStringBuilder;

.field public styleContainers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/mikepenz/iconics/utils/StyleContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/text/SpannableStringBuilder;Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/LinkedList<",
            "Lcom/mikepenz/iconics/utils/StyleContainer;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/mikepenz/iconics/utils/TextStyleContainer;->spannableStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 13
    iput-object p2, p0, Lcom/mikepenz/iconics/utils/TextStyleContainer;->styleContainers:Ljava/util/LinkedList;

    return-void
.end method
