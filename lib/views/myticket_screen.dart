part of '../imports/app_imports.dart';

class Myticket_screen extends StatelessWidget {
  const Myticket_screen({super.key});
  static const routename = '/myticket';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Tickets'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Task Tickets',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return TaskTicketWidget(
                    ticketNumber: 'TCKT${index + 1}',
                    title: '${AppLangKey.task.tr()} ${index + 1}',
                    assignedTo: 'John Doe',
                    status: 'In Progress',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TaskTicketWidget extends StatelessWidget {
  final String ticketNumber;
  final String title;
  final String assignedTo;
  final String status;

  const TaskTicketWidget({
    required this.ticketNumber,
    required this.title,
    required this.assignedTo,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 3.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                ticketNumber,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                status,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'Assigned to: $assignedTo',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
