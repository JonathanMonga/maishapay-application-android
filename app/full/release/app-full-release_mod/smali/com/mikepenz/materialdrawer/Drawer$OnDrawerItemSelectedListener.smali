.class public interface abstract Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemSelectedListener;
.super Ljava/lang/Object;
.source "Drawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/Drawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDrawerItemSelectedListener"
.end annotation


# virtual methods
.method public abstract onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJLcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onNothingSelected(Landroid/widget/AdapterView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation
.end method
