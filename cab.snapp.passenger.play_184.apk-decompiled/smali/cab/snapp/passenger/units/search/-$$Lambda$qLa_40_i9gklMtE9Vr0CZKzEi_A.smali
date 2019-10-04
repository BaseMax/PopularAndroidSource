.class public final synthetic Lcab/snapp/passenger/units/search/-$$Lambda$qLa_40_i9gklMtE9Vr0CZKzEi_A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/units/search/c;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/units/search/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/search/-$$Lambda$qLa_40_i9gklMtE9Vr0CZKzEi_A;->f$0:Lcab/snapp/passenger/units/search/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcab/snapp/passenger/units/search/-$$Lambda$qLa_40_i9gklMtE9Vr0CZKzEi_A;->f$0:Lcab/snapp/passenger/units/search/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/c;->onShowLoading()V

    return-void
.end method
