.class Lcom/mikepenz/iconics/context/IconicsFactory$1;
.super Ljava/lang/Object;
.source "IconicsFactory.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/iconics/context/IconicsFactory;->onViewCreatedInternal(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/iconics/context/IconicsFactory;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mikepenz/iconics/context/IconicsFactory;Landroid/content/Context;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/mikepenz/iconics/context/IconicsFactory$1;->this$0:Lcom/mikepenz/iconics/context/IconicsFactory;

    iput-object p2, p0, Lcom/mikepenz/iconics/context/IconicsFactory$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/mikepenz/iconics/context/IconicsFactory$1;->val$context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mikepenz/iconics/Iconics;->styleEditable(Landroid/content/Context;Landroid/text/Editable;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
