.class Lcom/android/server/wifi/WifiController$ApEnabledState$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiController$ApEnabledState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field firstChange:Z

.field lastSub:Landroid/telephony/SubscriptionInfo;

.field lastSubscriberId:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController$ApEnabledState;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/wifi/WifiController$ApEnabledState;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->firstChange:Z

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->-get3(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .local v2, "tm":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->-get3(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .local v0, "currentSub":Landroid/telephony/SubscriptionInfo;
    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "currentSubscriberId":Ljava/lang/String;
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->firstChange:Z

    if-eqz v3, :cond_2

    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->lastSub:Landroid/telephony/SubscriptionInfo;

    iput-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->lastSubscriberId:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->firstChange:Z

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->lastSubscriberId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->lastSub:Landroid/telephony/SubscriptionInfo;

    iput-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->lastSubscriberId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->-get3(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x104003c

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "disabling Wifi AP due to Subscriber Id (IMSI) change"

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const v4, 0x2600a

    invoke-virtual {v3, v4, v5, v5, v6}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
