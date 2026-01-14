import functions_framework
from flask import jsonify


@functions_framework.http
def hello_world(request):
    """
    HTTP Cloud Function that responds to requests.
    
    Args:
        request (flask.Request): The request object.
        
    Returns:
        A JSON response with a greeting message.
    """
    request_json = request.get_json(silent=True)
    request_args = request.args
    
    name = None
    if request_json and 'name' in request_json:
        name = request_json['name']
    elif request_args and 'name' in request_args:
        name = request_args['name']
    
    if name:
        message = f'Hello, {name}!'
    else:
        message = 'Hello, World!'
    
    return jsonify({
        'message': message,
        'status': 'success'
    }), 200
