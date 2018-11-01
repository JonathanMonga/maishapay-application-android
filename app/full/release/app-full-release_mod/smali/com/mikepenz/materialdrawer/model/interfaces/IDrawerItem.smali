.class public interface abstract Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
.super Ljava/lang/Object;
.source "IDrawerItem.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/IItem;
.implements Lcom/mikepenz/fastadapter/IExpandable;
.implements Lcom/mikepenz/fastadapter/ISubItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IItem<",
        "TT;TVH;>;",
        "Lcom/mikepenz/fastadapter/IExpandable<",
        "TT;",
        "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
        ">;",
        "Lcom/mikepenz/fastadapter/ISubItem<",
        "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
        "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract equals(J)Z
.end method

.method public abstract generateView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public abstract generateView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getLayoutRes()I
.end method

.method public abstract getTag()Ljava/lang/Object;
.end method

.method public abstract getType()I
.end method

.method public abstract getViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TVH;"
        }
    .end annotation
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isSelectable()Z
.end method

.method public abstract isSelected()Z
.end method

.method public abstract unbindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation
.end method

.method public abstract withSelectable(Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation
.end method

.method public abstract withSetSelected(Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation
.end method
