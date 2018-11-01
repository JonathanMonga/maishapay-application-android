.class public interface abstract annotation Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChanged;
.super Ljava/lang/Object;
.source "DistinctUntilChanged.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctUntilChanged;
        comparator = Lnet/grandcentrix/thirtyinch/distinctuntilchanged/HashComparator;
        logDropped = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract comparator()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lnet/grandcentrix/thirtyinch/distinctuntilchanged/DistinctComparator;",
            ">;"
        }
    .end annotation
.end method

.method public abstract logDropped()Z
.end method
