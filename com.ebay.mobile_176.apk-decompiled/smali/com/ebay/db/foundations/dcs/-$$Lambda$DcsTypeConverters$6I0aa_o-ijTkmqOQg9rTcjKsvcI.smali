.class public final synthetic Lcom/ebay/db/foundations/dcs/-$$Lambda$DcsTypeConverters$6I0aa_o-ijTkmqOQg9rTcjKsvcI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field private final synthetic f$0:Landroidx/arch/core/util/Function;

.field private final synthetic f$1:Ljava/util/EnumSet;


# direct methods
.method public synthetic constructor <init>(Landroidx/arch/core/util/Function;Ljava/util/EnumSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/db/foundations/dcs/-$$Lambda$DcsTypeConverters$6I0aa_o-ijTkmqOQg9rTcjKsvcI;->f$0:Landroidx/arch/core/util/Function;

    iput-object p2, p0, Lcom/ebay/db/foundations/dcs/-$$Lambda$DcsTypeConverters$6I0aa_o-ijTkmqOQg9rTcjKsvcI;->f$1:Ljava/util/EnumSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/-$$Lambda$DcsTypeConverters$6I0aa_o-ijTkmqOQg9rTcjKsvcI;->f$0:Landroidx/arch/core/util/Function;

    iget-object v1, p0, Lcom/ebay/db/foundations/dcs/-$$Lambda$DcsTypeConverters$6I0aa_o-ijTkmqOQg9rTcjKsvcI;->f$1:Ljava/util/EnumSet;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->lambda$stringToSetOfEnum$0(Landroidx/arch/core/util/Function;Ljava/util/EnumSet;Ljava/lang/String;)V

    return-void
.end method
